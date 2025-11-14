variable "project_id" {}
variable "region" { default = "us-central1" }
variable "zone" { default = "us-central1-a" }

variable "gcp_credentials" {
  type        = string
  description = "GCP service account JSON"
}

