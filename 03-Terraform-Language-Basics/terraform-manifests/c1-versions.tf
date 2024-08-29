# Terraform Settings Block
terraform {
  required_version = ">=1/8.5"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=5.33.0"
    }
  }
}
 
# Terraform Provider Block
provider "google" {
  project = "euphoric-quanta-433916-q7" # PROJECT_ID
  region = "us-central1"
}

