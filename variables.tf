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

variable "public_subnet" {
  type        = string
  description = "Public Subnet Name"
}

variable "private_subnet" {
  type        = string
  description = "Private Subnet Name"
}

variable "public_cidr" {
  type        = string
  description = "Public CIDR Range"
}

variable "private_cidr" {
  type        = string
  description = "Private CIDR Range"
}

variable "terraform_user" {
   type        = string
  description = "Terraform Username"
}

variable "terraform_public_ssh_key" {
  type        = string
  description = "SSH Public Key Path for Terraform"
}