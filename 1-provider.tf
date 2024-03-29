# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "kubernetes-411307"
  region  = "us-central1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "gcs_12"
    prefix = "terraform/gke_state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
