module "vpc" {
  source = "./module/vpc"
}

module "sg" {
  source = "./module/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source    = "./module/ec2"
  subnet_id = module.vpc.public_subnet_id
  sg_id     = module.sg.sg_id
}
