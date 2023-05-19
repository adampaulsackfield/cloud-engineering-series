terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.6"
    }
  }
}

provider "google" {
  credentials = var.terraform_sa_credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}