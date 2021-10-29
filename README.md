Steps to reproduce:
1) Create the mock data set in file bigquery_datasets.tf
2) Create the mock table in file bigquery_tables.tf
3) Enable data catalog api
4) Impersonate service account
    export GOOGLE_APPLICATION_CREDENTIALS="./service-account-key.json"  
5) Replace the variable local parent_user_info with the entry id of the mock table.
6) Create data catalog templates in data_catalog_templates.tf
7) Create data catalog tags in data_catalog_configs.tf

Extra commands:
export TF_LOG=DEBUG
export TF_LOG_PATH="./terraform.log"