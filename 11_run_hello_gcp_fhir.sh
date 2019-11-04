#!/bin/bash

# commands in
# - create-resource
# - delete-resource
# - conditional-delete-resource
# - get-resource
# - list-resource-history
# - export-resources
# - execute-bundle
# - get-resource-history
# - delete-resource-group
# - update-resource
# - conditional-update-resource
# - patch-resource
# - conditional-patch-resource
# - search-resources-get
# - search-resources-post
# - get-patient-everything
# - get-metadata

python3 hello_gcp_fhir.py create-resource \
    --service_account $GOOGLE_APPLICATION_CREDENTIALS \
    --project_id $GOOGLE_CLOUD_PROJECT \
    --base_url https://healthcare.googleapis.com/$HEALTH_API_VERSION_URL \
    --cloud_region $REGION \
    --dataset_id $DATASET_ID \
    --fhir_store_id $FHIR_STORE_ID \
    --resource_type Observation \
    --resource_id resource1 \
    --bundle bundle1 \
    --uri_prefix http://acme.org \
    --version_id v1