variable "network_name" {
  type        = string
  description = "VPC Network Name"
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