#!/bin/bash

URL=https://healthcare.googleapis.com/$HEALTH_API_VERSION_URL/projects/$PROJECT/locations/$REGION/datasets/$DATASET_ID/fhirStores/$FHIR_STORE_ID/fhir/Patient
echo "URL: " $URL
curl -X POST \
    -H "Authorization: Bearer "$(gcloud auth print-access-token) \
    -H "Content-Type: application/fhir+json; charset=utf-8" \
    --data '{
      "name": [
        {
          "use": "official",
          "family": "Smith",
          "given": [
            "Darcy"
          ]
        }
      ],
      "gender": "female",
      "birthDate": "1970-01-01",
      "resourceType": "Patient"
    }' \
    $URL