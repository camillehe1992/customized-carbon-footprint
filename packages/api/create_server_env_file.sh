#!/usr/bin/env sh

#
# © 2021 Thoughtworks, Inc.
#

echo AWS_PROXY_ACCOUNT_ID=$AWS_PROXY_ACCOUNT_ID >> .env
echo AWS_PROXY_ROLE_NAME=$AWS_PROXY_ROLE_NAME >> .env
echo AWS_ACCOUNTS=$AWS_ACCOUNTS >> .env
echo AWS_TARGET_ACCOUNT_ROLE_NAME=$AWS_TARGET_ACCOUNT_ROLE_NAME >> .env
echo AWS_AUTH_MODE=$AWS_AUTH_MODE >> .env
echo AWS_ATHENA_REGION=$AWS_ATHENA_REGION >> .env
echo AWS_ATHENA_DB_NAME=$AWS_ATHENA_DB_NAME >> .env
echo AWS_ATHENA_DB_TABLE=$AWS_ATHENA_DB_TABLE >> .env
echo AWS_ATHENA_QUERY_RESULT_LOCATION=$AWS_ATHENA_QUERY_RESULT_LOCATION >> .env
echo AWS_BILLING_ACCOUNT_ID=$AWS_BILLING_ACCOUNT_ID >> .env
echo AWS_BILLING_ACCOUNT_NAME=$AWS_BILLING_ACCOUNT_NAME >> .env
echo AWS_USE_BILLING_DATA=$AWS_USE_BILLING_DATA >> .env
echo GCP_USE_BILLING_DATA=$GCP_USE_BILLING_DATA >> .env
echo GCP_USE_CARBON_FREE_ENERGY_PERCENTAGE=$GCP_USE_CARBON_FREE_ENERGY_PERCENTAGE >> .env
echo GCP_VCPUS_PER_GKE_CLUSTER=$GCP_VCPUS_PER_GKE_CLUSTER >> .env
echo GCP_VCPUS_PER_CLOUD_COMPOSER_ENVIRONMENT=$GCP_VCPUS_PER_CLOUD_COMPOSER_ENVIRONMENT >> .env
echo GCP_PROJECTS=$GCP_PROJECTS >> .env
echo GCP_BIG_QUERY_TABLE=$GCP_BIG_QUERY_TABLE >> .env
echo GCP_BILLING_PROJECT_ID=$GCP_BILLING_PROJECT_ID >> .env
echo GCP_BILLING_PROJECT_NAME=$GCP_BILLING_PROJECT_NAME >> .env
echo AZURE_AUTH_MODE=$AZURE_AUTH_MODE >> .env
echo AZURE_CLIENT_ID=$AZURE_CLIENT_ID >> .env
echo AZURE_CLIENT_SECRET=$AZURE_CLIENT_SECRET >> .env
echo AZURE_TENANT_ID=$AZURE_TENANT_ID >> .env
echo AZURE_USE_BILLING_DATA=$AZURE_USE_BILLING_DATA >> .env
echo LOGGING_MODE="GCP" >> .env
echo GENERATE_SOURCEMAP="false" >> .env
echo GROUP_QUERY_RESULTS_BY=$GROUP_QUERY_RESULTS_BY >> .env
echo GCS_CACHE_BUCKET_NAME=$GCS_CACHE_BUCKET_NAME >> .env
echo CACHE_MODE=$CACHE_MODE >> .env
echo MONGODB_URI=$MONGODB_URI >> .env
echo MONGODB_CREDENTIALS=$MONGODB_CREDENTIALS >> .env

echo HTTP_PROXY=http://proxy.tsp.cn-north-1.aws.unicom.cloud.bmw:8080 >> .env
echo HTTPS_PROXY=http://proxy.tsp.cn-north-1.aws.unicom.cloud.bmw:8080 >> .env
echo http_proxy=http://proxy.tsp.cn-north-1.aws.unicom.cloud.bmw:8080 >> .env
echo https_proxy=http://proxy.tsp.cn-north-1.aws.unicom.cloud.bmw:8080 >> .env
echo NO_PROXY=169.254.169.254,169.254.170.2,/var/run/docker.sock,localhost,127.0.0.1,.muc,.aws.cloud.bmw,.azure.cloud.bmw,.bmw.corp,.bmwgroup.net,.amazonaws.com,.amazonaws.com.cn >> .env
echo no_proxy=169.254.169.254,169.254.170.2,/var/run/docker.sock,localhost,127.0.0.1,.muc,.aws.cloud.bmw,.azure.cloud.bmw,.bmw.corp,.bmwgroup.net,.amazonaws.com,.amazonaws.com.cn >> .env