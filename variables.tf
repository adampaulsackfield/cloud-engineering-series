variable "terraform_sa_credentials" {
  type        = string
  description = "Service Account Credentials for Terraform"
}

variable "project_id" {
  type        = string 
  description = "Project ID from Google Cloud Platform" 
}

variable "region" {
  type        = string
  description = "The region for the Project"
}

variable "zone" {
  type        = string
  description = "The zone for the Project"
}

variable "network_name" {
  type        = string
  description = "VPC Network name"
}