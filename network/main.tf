module "vpc" {
 source = "terraform-aws-modules/vpc/aws"

 name = "${var.company}-${var.environment}-vpc"
 cidr = "10.0.0.0/16"

 azs = ["us-west-2a", "us-west-2b", "us-west-2c"]
 private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
 public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

 enable_nat_gateway = false
 enable_vpn_gateway = false

 tags = {
   Company = var.company
   Environment = var.environment
 }
}

module "ssh_security_group" {
 source = "terraform-aws-modules/security-group/aws//modules/ssh"
 name = "ssh-security-group"
 description = "Security group for SSH"
 vpc_id = module.vpc.vpc_id
 ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
}
