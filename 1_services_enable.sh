#!/bin/bash

# https://cloud.google.com/endpoints/docs/openapi/enable-api
gcloud services list --available | grep health

# healthcare.googleapis.com

gcloud services enable healthcare.googleapis.com