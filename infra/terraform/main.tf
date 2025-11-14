resource "google_compute_instance" "backend_vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  # Install Docker automatically
  metadata_startup_script = <<EOF
    apt-get update
    apt-get install -y docker.io
    systemctl enable docker
    systemctl start docker
  EOF
}

