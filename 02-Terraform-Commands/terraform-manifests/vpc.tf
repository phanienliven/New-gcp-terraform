# Terraform Provider Configuration: google
provider "google" {
  project = "my-google-project"  # Replace with your actual project ID
  region  = "us-central1"
}

# Resource: VPC
resource "google_compute_network" "VPC-GCPTerraform" {
  name                    = "gcpterraform"
  auto_create_subnetworks = false   
}

# Resource: Subnet
resource "google_compute_subnetwork" "my-GCPTerraform" {
  name          = "subnet1"
  region        = "us-central1"
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.VPC-GCPTerraform.id  # Correct reference to VPC ID
}

