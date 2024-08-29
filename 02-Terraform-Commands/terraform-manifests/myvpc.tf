# Terraform Provider Configuration: google
provider "google" {
  project = "Google terraform project"
  region = "us-central1"
}

# Resource: VPC
resource "google_compute_network" "myvpc" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}


# Resource: Subnet
resource "google_compute_subnetwork" "mysubnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = "my-vpc"  # This is the VPC name, not an ID
}
