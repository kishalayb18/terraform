# VPC
resource "google_compute_network" "csp-vpc_network" {
    project = ""
    name = "csp-vpc-network"
    auto_create_subnetworks = false
}

# subnets
resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
    name          = "test-subnetwork"
    ip_cidr_range = "10.2.0.0/16"
    region        = "asia-south1"
    network       = google_compute_network.csp-vpc_network.id
    secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
    }
}