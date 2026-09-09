#!/bin/bash

# 1. List the .csv files in the remote S3 bucket folder
aws s3 ls s3://dsan6000-wikipedia/hourly/

# 2. Copy the .csv files from S3 into the local data folder
aws s3 cp s3://dsan6000-wikipedia/hourly/ data/ --recursive --exclude "*" --include "*.csv"

# 3. List the .csv files in the local data folder
ls data/*.csv
