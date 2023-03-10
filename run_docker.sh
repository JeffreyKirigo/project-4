#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker --version

# Build image
docker build --tag=kirigo/micro-app .
# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 kirigo/micro-app
