module "vpc" {
  source = "./vpc"
  vpc_id = module.vpc.vpc_id
}
module "security_group" {
  source = "./security_groups"
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
    source = "./ec2"
    vpc_id = module.vpc.vpc_id
    security_group_id = module.security_group.security_group_id

    public_subnet_1_id = module.vpc.public_subnet_1_id

} 
module "rds" {
  source = "./rds"
  db_subnet_group_name   = "mydbsubnet"
  subnet_ids             = [module.vpc.private_subnet_1_id,module.vpc.private_subnet_2_id]
  rds_sg_id              = module.security_group.rds_sg_id
}