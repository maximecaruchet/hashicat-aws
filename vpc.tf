module "vpc" {
  source = "app.terraform.io/maxime-training/vpc/aws"
  version = "2.33.0"

  name = "simple-example"

  cidr = var.address_space

  azs             = ["us-east-1"]

  tags = {
    Owner       = "test"
    Environment = "private-module"
  }

  vpc_tags = {
    Name = "my-vpc-custom"
  }
}