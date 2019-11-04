#!/bin/bash

gcloud $HEALTH_API_VERSION healthcare datasets create $DATASET_ID \
    --location=$REGION