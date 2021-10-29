module "bigquery_datasets" {
  count                      = length(var.datasets)
  source                     = "terraform-google-modules/bigquery/google"
  version                    = "~> 4.3"
  dataset_id                 = var.datasets[count.index]
  description                = "dataset-${var.datasets[count.index]}"
  project_id                 = var.proj_id
  location                   = "US"
  delete_contents_on_destroy = true
  dataset_labels = {
    environment   = var.environment
    created_by    = "terraform"
  }
}