#!/bin/bash

export AWS_REGION=eu-west-1
## Non-VPC
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket te-sam-simple-python
sam deploy --template-file packaged.yaml --stack-name sam-simple-python --capabilities CAPABILITY_IAM
## VPC
sam package --template-file template-vpc.yaml --output-template-file packaged-vpc.yaml --s3-bucket te-sam-simple-python
sam deploy --template-file packaged-vpc.yaml --stack-name sam-simple-python-vpc --capabilities CAPABILITY_IAM
