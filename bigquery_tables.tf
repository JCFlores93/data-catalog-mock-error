locals {
  mock_tables = {
    for file in fileset("${path.module}/bq_tables_schemas/mock", "*.json") : file => {
      "table_name" = trimsuffix(trimprefix(file, "mock_"), "_schema.json")
      "file"       = file("${path.module}/bq_tables_schemas/mock/${file}")
    }
  }
}

/******************************************
  Mock table
 *****************************************/
resource "google_bigquery_table" "mock_tables" {
  for_each            = local.mock_tables
  project             = var.proj_id
  dataset_id          = module.bigquery_datasets[0].bigquery_dataset.dataset_id
  table_id            = each.value.table_name
  deletion_protection = false
  labels = {
    environment   = var.environment
    created_by    = "terraform"
  }
  schema = each.value.file
}