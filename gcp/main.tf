module "vm_instance" {
  project_id    = var.project_id
  source        = "./modules/gce"
  count         = length(var.vm_zones)
  instance_name = "hy-${var.vm_instance_name[count.index]}-vm"
  machine_type  = "f1-micro"
  zone          = var.vm_zones[count.index]
  subnetwork    = google_compute_subnetwork.hy_vpc_subnet[count.index].self_link
  image         = "debian-cloud/debian-11"
  tags          = ["allow-ssh"]
}