#!/bin/bash

gcloud $HEALTH_API_VERSION healthcare fhir-stores create $FHIR_STORE_ID \
    --dataset=$DATASET_ID \
    --location=$REGION