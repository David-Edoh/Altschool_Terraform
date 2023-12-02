module "eu_west_1_instances" {
  source            = "./modules/instance"
  region            = "eu-west-1"
  access_key        = var.access_key
  secret_key        = var.secret_key
  ami_id            = "ami-0694d931cee176e7d"
  instance_type     = var.instance_type
  availability_zones = tolist(["eu-west-1a", "eu-west-1b"])
  environment       = var.environment
  instance_count    = 2
}

module "eu_central_1_instances" {
  source            = "./modules/instance"
  region            = "eu-central-1"
  access_key        = var.access_key
  secret_key        = var.secret_key
  ami_id            = "ami-06dd92ecc74fdfb36"
  instance_type     = var.instance_type
  availability_zones = tolist(["eu-central-1a", "eu-central-1b"])
  environment       = var.environment
  instance_count    = 2
}


