import simplejson
import logging
import os
import time
import boto3
import json
import aiofiles
import uvicorn
from botocore.exceptions import ClientError
from fastapi import FastAPI, HTTPException, File, UploadFile

from env import aws_access_key_id, aws_secret_access_key
from save_data import save_db
from filter1 import filter1
from filter2 import filter2
from filter3 import filter3

BUCKET_NAME = "pdf-textract-bucket"
REGION_NAME = "us-west-1"
textract_client = boto3.client('textract', aws_access_key_id=aws_access_key_id, aws_secret_access_key=aws_secret_access_key, region_name=REGION_NAME)
s3_client = boto3.client('s3', aws_access_key_id=aws_access_key_id, aws_secret_access_key=aws_secret_access_key, region_name=REGION_NAME)
UPLOAD_DIR = "upload"

if not os.path.exists(UPLOAD_DIR):
    os.mkdir(UPLOAD_DIR)
    
# Step 1
def upload_file(file_name, bucket, object_name=None):
    """Upload a file to an S3 bucket

    :param file_name: File to upload
    :param bucket: Bucket to upload to
    :param object_name: S3 object name. If not specified then file_name is used
    :return: True if file was uploaded, else False
    """

    # If S3 object_name was not specified, use file_name
    if object_name is None:
        object_name = os.path.basename(file_name)

    # Upload the file
    try:
        response = s3_client.upload_file(file_name, bucket, object_name)
    except ClientError as e:
        logging.error(e)
        return False
    return True

# step 2
def startJob(s3BucketName, objectName):
    response = None
    response = textract_client.start_document_text_detection(
        DocumentLocation={
            'S3Object': {
                'Bucket': s3BucketName,
                'Name': objectName
            },
        }
    )

    return response["JobId"]

# step 3
def isJobComplete(jobId):
    time.sleep(2)
    response = textract_client.get_document_text_detection(JobId=jobId)
    status = response["JobStatus"]
    print("Job status: {}".format(status))

    while(status == "IN_PROGRESS"):
        time.sleep(2)
        response = textract_client.get_document_text_detection(JobId=jobId)
        status = response["JobStatus"]
        print("Job status: {}".format(status))

    return status

# step 4
def getJobResults(jobId):
    pages = []

    time.sleep(2)

    response = textract_client.get_document_text_detection(JobId=jobId)
    
    pages.append(response)
    nextToken = None
    if('NextToken' in response):
        nextToken = response['NextToken']

    while(nextToken):
        time.sleep(2)

        response = textract_client.get_document_text_detection(JobId=jobId, NextToken=nextToken)

        pages.append(response)
        nextToken = None
        if('NextToken' in response):
            nextToken = response['NextToken']

    return pages

def get_class(file_path):
    import fitz
    doc = fitz.open(file_path)
    page = doc.load_page(0) #put here the page number
    page_to_text = page.get_text("text")
    text_lines = page_to_text.split("\n")
    for line in text_lines:
        if "heeft energielabel" in line:
            try:
                class_label = line.split()[2]                
            except:
                class_label = ""
            break
    return class_label

# Document
app = FastAPI()
@app.get('/')
def index():
    return {'message': 'This is the homepage of the API '}
@app.post("/textract")
async def root(file: UploadFile = File(...)):
    print("Uploading file on server....")
    file_name = file.filename
    if(file_name.split(".")[-1:][0] != "pdf" and file_name.split(".")[-1:][0] != "PDF"):
        print("Unsupported file format")
        return {"message": "Please upload the pdf file"}

    file_path = os.path.join(UPLOAD_DIR, file_name)
    wfile = open(file_path, "wb")
    wfile.write(file.file.read())
    print("Successfully uploaded on server.")

    print("Upload the pdf on AWS S3 bucket...")
    upload_file(file_path, bucket=BUCKET_NAME, object_name=file_name)
    print("Successfully uploaded on AWS S3 bucket.")

    print("Extracting Fields...")
    jobId = startJob(BUCKET_NAME, file_name)
    print("Started job with id: {}".format(jobId))

    if(isJobComplete(jobId)):  # online if case
    # if(True):                                         # local
        # file = open("response.json", "r")             # local response 
        # response = json.load(file)                    # local response 
        all_blocks = []
        response = getJobResults(jobId)                 # online response
        
        for blocks in response:
            for item in blocks['Blocks']:
                if("Text" in item and item["BlockType"] == "LINE"):
                    all_blocks.append(item)
                            
        if(all_blocks[0]["Text"] == "Rijksoverheid"):
            result = filter2(all_blocks)            
            flag = save_db(result, type="2")
        elif(all_blocks[1]["Text"] == "Afgegeven conform de Regeling energieprestatie gebouwen."):
            result = filter3(all_blocks)
            flag = save_db(result, type="3")
        else:
            result = filter1(all_blocks)
            if not result["Class"]:
                result["Class"] = get_class(file_path)
            flag = save_db(result, type="1")
        
            
        response_file = open("result.json", "w")
        response_file.write(simplejson.dumps(result, indent=4, sort_keys=True))     # magic happens here to make it pretty-printed
        response_file.close()
        
        if(flag):
            print("Saved the result on AWS RDS")
            return {"message": result}
        else:
            raise HTTPException(status_code=400, detail="DB insert is failed. Please check PDF router or DB connection")
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)