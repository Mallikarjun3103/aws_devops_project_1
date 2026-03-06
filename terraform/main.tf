module "vpc" {

  source = "./modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"

}

module "ec2" {

  source = "./modules/ec2"

  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_id

}
