#!/bin/bash

# enable billing
BILLING_ACCOUNT=`gcloud alpha billing accounts list --format "value(name.basename())"`
echo $BILLING_ACCOUNT

gcloud alpha billing projects link $PROJECT \
      --billing-account $BILLING_ACCOUNT