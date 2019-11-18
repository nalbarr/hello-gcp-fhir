#!/bin/bash

gcloud $HEALTH_API_VERSION healthcare datasets describe $DATASET_ID \
    --location=$REGION