resource "google_compute_network" "network_name" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = var.public_subnet
  network       = google_compute_network.network_name.self_link
  ip_cidr_range = var.public_cidr
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = var.private_subnet
  network       = google_compute_network.network_name.self_link
  ip_cidr_range = var.private_cidr
}