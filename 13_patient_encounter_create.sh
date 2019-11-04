#!/bin/bash

PATIENT_ID=$1
REFERENCE=
URL="https://healthcare.googleapis.com/$HEALTH_API_VERSION_URL/projects/$PROJECT/locations/$REGION/datasets/$DATASET_ID/fhirStores/$FHIR_STORE_ID/fhir/Encounter"
echo "URL: " $URL
curl -X POST \
    -H "Authorization: Bearer "$(gcloud auth print-access-token) \
    -H "Content-Type: application/fhir+json; charset=utf-8" \
    --data '{
      "status": "finished",
      "class": {
        "system": "http://hl7.org/fhir/v3/ActCode",
        "code": "IMP",
        "display": "inpatient encounter"
      },
      "reason": [
        {
          "text": "The patient had an abnormal heart rate. She was concerned about this."
        }
      ],
      "subject": {
        "reference": "Patient/b0404e30-6f86-44b0-b0ad-9325e750365b"
      },
      "resourceType": "Encounter"
    }' \
    $URL