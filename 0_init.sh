#!/bin/bash

export PROJECT=YOUR_PROJECT
gcloud config set project YOUR_PROJECT

export REGION=us-central1

export HEALTH_API_VERSION=beta
export HEALTH_API_VERSION_URL=v1beta1

export DATASET_ID=dataset_1
export FHIR_STORE_ID=fhir_store_1

gcloud config get-value project

# for hello-gcp-fhir.py
export GOOGLE_CLOUD_PROJECT=$PROJECT
export GOOGLE_APPLICATION_CREDENTIALS=$(gcloud auth print-access-token)
