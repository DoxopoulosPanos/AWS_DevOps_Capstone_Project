#!/usr/bin/env bash

## Run Docker locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=flask_api .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 flask_api