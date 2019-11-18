#!/bin/bash

# https://cloud.google.com/endpoints/docs/openapi/enable-api
gcloud services list --available | grep health

# healthcare.googleapis.com

# version specific
gcloud $HEALTH_API_VERSION services enable healthcare.google.apis.com