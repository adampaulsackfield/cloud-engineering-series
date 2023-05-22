module "network" {
  source         = "./modules/global/network"
  
  network_name   = var.network_name
  public_subnet  = var.public_subnet
  private_subnet = var.private_subnet
  public_cidr    = var.public_cidr
  private_cidr   = var.private_cidr
}