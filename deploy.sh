#!/bin/bash

# Remove if previously deployed function exists
aws lambda delete-function --region ap-southeast-1 --function-name TestDotNetCore31 2>/dev/null

# Create lambda function
aws lambda create-function --function-name TestDotNetCore31 \
  --runtime "dotnetcore3.1" \
  --role $LAMBDA_ROLE_ARN \
  --handler dotnetcore-lambda-example::HelloWorld.Function::HelloWorld \
  --zip-file fileb://./dotnetcore-lambda-example/bin/Debug/netcoreapp3.1/publish/package.zip
