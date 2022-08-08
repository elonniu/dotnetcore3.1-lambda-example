#!/bin/bash

aws lambda invoke --function-name TestDotNetCore31 \
  --invocation-type RequestResponse \
  --region ap-southeast-1 \
  --log-type Tail \
  out.txt | jq -r '.LogResult' | base64 -D
