resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = "hy-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}

