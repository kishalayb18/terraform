resource "google_compute_subnetwork" "hy_vpc_subnet" {
  project       = var.project_id
  count         = length(var.subnet_names)
  name          = "${var.subnet_names[count.index]}-subnets"
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.subnet_cidr_ranges[count.index]
  region        = var.subnet_regions[count.index]
}