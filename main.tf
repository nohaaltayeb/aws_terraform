module "network" {
  source = "./network"
  cidr= var.cidr
  public1_subnet=var.public1_subnet
  public2_subnet=var.public2_subnet
  private1_subnet=var.private1_subnet
  private2_subnet=var.private2_subnet
  region = var.region
  
}