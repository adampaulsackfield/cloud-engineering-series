module "network" {
  source         = "./modules/global/network"
  
  network_name   = var.network_name
  public_subnet  = var.public_subnet
  private_subnet = var.private_subnet
  public_cidr    = var.public_cidr
  private_cidr   = var.private_cidr
}

module "firewall" {
  source = "./modules/global/firewall"

  network_name = var.network_name

  depends_on = [ module.network ]
}

module "verdi-vpn-server" {
  source = "./modules/verdi-vpn-server"

  instance_name            = "verdi-vpn-server"
  zone                     = var.zone
  network_name             = var.network_name
  public_subnet            = var.public_subnet
  terraform_user           = var.terraform_user
  terraform_public_ssh_key = var.terraform_public_ssh_key

  depends_on = [ module.network, module.firewall ]
}