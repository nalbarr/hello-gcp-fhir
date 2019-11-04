#!/bin/bash

# After creating the Patient resource, create an Encounter resource to describe an interaction between the 
# patient and a practitioner. The following sample shows how to send a POST request using curl to create an 
# Encounter resource.

URL="https://healthcare.googleapis.com/$HEALTH_API_VERSION_URL/projects/$PROJECT/locations/$REGION/datasets/$DATASET_ID/fhirStores/$FHIR_STORE_ID/fhir/Observation?identifier=my-code-system|ABC-12345"
echo "URL: " $URL
curl -X PUT \
     -H "Authorization: Bearer "$(gcloud auth print-access-token) \
     -H "Content-Type: application/fhir+json; charset=utf-8" \
     --data '{
         "effectiveDateTime": "2018-01-01T00:00:00+00:00",
         "resourceType": "Observation",
         "identifier": [
             {
                 "system": "my-code-system",
                 "value": "ABC-12345"
             }
         ],
         "status": "final",
         "subject": {
             "reference": "Patient/PATIENT_ID"
         },
         "valueQuantity": {
             "unit": "bpm",
             "value": BPM_VALUE
         }
     }' \
    $URL