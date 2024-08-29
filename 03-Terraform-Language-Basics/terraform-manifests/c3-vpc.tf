# Resource Block : VPC
resource "google_compute_network" "myvpc" {
  name = "vpc1"
  auto_create_subnetworks = false
}

# Resouce Block : Subnet
resource "google_compute_subnetwork" "mysubnet123" {
 name = "mysubnet1"
 region = "us-central1"
 ip_cidr_range = "10.128.0.0/20"
 network = google_compute_network.myvpc.id 
 }