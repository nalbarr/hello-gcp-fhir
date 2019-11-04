#!/bin/bash

gcloud $HEALTH_API_VERSION healthcare datasets delete $DATASET_ID \
    --location=$REGION