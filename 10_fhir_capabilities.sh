#!/bin/bash

curl -X GET \
     -H "Authorization: Bearer "$(gcloud auth print-access-token) \
     "https://healthcare.googleapis.com/$HEALTH_API_VERSION_URL/projects/$PROJECT/locations/$REGION/datasets/$DATASET_ID/fhirStores/$FHIR_STORE_ID/fhir/metadata"