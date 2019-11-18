#!/bin/bash

export PROJECT=hello-gcp-fhir
gcloud config set project hello-gcp-fhir

export REGION=us-central1

# beta
# https://cloud.google.com/sdk/gcloud/reference/beta/healthcare/
export HEALTH_API_VERSION=beta
export HEALTH_API_VERSION_URL=v1beta1

# alpha
# https://cloud.google.com/sdk/gcloud/reference/alpha/healthcare/
# export HEALTH_API_VERSION=alpha
# export HEALTH_API_VERSION_URL=v1alpha2

export DATASET_ID=dataset_1
export FHIR_STORE_ID=fhir_store_1

gcloud config get-value project

# for hello-gcp-fhir.py
export GOOGLE_CLOUD_PROJECT=$PROJECT
export GOOGLE_APPLICATION_CREDENTIALS=$(gcloud auth print-access-token)
