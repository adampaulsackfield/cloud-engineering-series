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

variable "terraform_user" {
   type        = string
  description = "Terraform Username"
}

variable "terraform_public_ssh_key" {
  type        = string
  description = "SSH Public Key Path for Terraform"
}
 
 variable "instance_name" {
  type        = string
  description = "Instance Name"
 }