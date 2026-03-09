provider "google" {
  project = var.project_id
  region  = var.region
}

# Data source to reference existing VPC hub
data "google_compute_network" "vpc_hub" {
  project = var.hub_project_id
  name    = "vpc-hub"
}

# Data source to reference existing subnet
data "google_compute_subnetwork" "subnet_vpn" {
  project = var.hub_project_id
  name    = "subnet-vpn"
  region  = var.region
}

