# Define a module to create a VM instance
resource "google_compute_instance" "vm_instance" {
  project = var.project_id
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnetwork
  }
  allow_stopping_for_update = true
  tags = var.tags
}