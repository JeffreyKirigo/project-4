[![CircleCI](https://dl.circleci.com/status-badge/img/gh/JeffreyKirigo/project-4/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/JeffreyKirigo/project-4/tree/master)  
# Operationalizing a Machine Learning Microservice API  
## Project Overview

This project operationalizes a Machine Learning Microservice API. 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks  

1. Test your project code using linting
2. Complete a Dockerfile to containerize this application
3. Deploy your containerized application using Docker and make a prediction
4. Improve the log statements in the source code for this application
5. Configure Kubernetes and create a Kubernetes cluster
6. Deploy a container using Kubernetes and make a prediction
7. Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

## Description of folders and files in the repo  

1. [.circleci](/.circleci): For the CircleCI build server
2. [model_data](/model_data) : this folder contains the pretrained `sklearn` model and housing csv files
3. [output_txt_files](/output_txt_files): folder contains sample output logs from running `./run_docker.sh` and `./run_kubernetes.sh`
4. [app.py](/app.py) : contains the flask app
5. [Dockerfile](/app.py): contains instructions to containerize the application
6. [Makefile](/Makefile) : contains instructions for environment setup and lint tests
7. [requirements.txt](/requirements.txt): list of required dependencies
8. [run_docker.sh](/run_docker.sh): bash script to build Docker image and run the application in a Docker container
9. [upload_docker.sh](/upload_docker.sh): bash script to upload the built Docker image to Dockerhub
10. [run_kubernetes.sh](/run_kubernetes.sh): bash script to run the application in a Kubernetes cluster
11. [make_prediction.sh](/make_prediction.sh): bash script to make predictions against the Docker container and k8s cluster

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```*bash*
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
