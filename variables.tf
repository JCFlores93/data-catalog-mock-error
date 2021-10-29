variable "proj_id" {
  description = "The project ID."
  type        = string
}
variable "service_account" {
  description = "The Service Account."
  type        = string
}
variable "region" {
  description = "The region."
  type        = string
}
variable "environment" {
  description = "Env. Name."
  type        = string
}
variable "datasets" {
  description = "Datasets to be created in the region of US"
  type        = list
}