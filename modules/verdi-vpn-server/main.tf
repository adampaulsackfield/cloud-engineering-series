resource "google_compute_address" "verdi_static_ip" {
  name = "verdi-static-ip"
}

resource "google_compute_instance" "instance" {
  name         = var.instance_name
  machine_type = "e2-small"
  zone         = var.zone

  tags = ["allow-http", "allow-https", "allow-ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  
    }
  }

  network_interface {
    network    = var.network_name
    subnetwork = var.public_subnet

    access_config {
      nat_ip = google_compute_address.verdi_static_ip.address
    }
  }

  metadata = {
    ssh-keys = "${var.terraform_user}:${file(var.terraform_public_ssh_key)}"
  }
}