# Terraform Settings Block
terraform {
  required_version = ">= 5.33.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.33.0"
    }
  }
}

# Terraform Provider Block
provider "google" {
  project = "gcplearn9" # PROJECT_ID
  region = "us-central1"
}

