module "vpc" {
  source = "./Modules/vpc"
}
module "subnet" {
  source = "./Modules/Subnet"
  vpc_id = module.vpc.vpc_id
}
module "securitygroup" {
  source = "./Modules/Security"
  vpcid = module.vpc.vpc_id
}
module "Routes" {
  source = "./Modules/Route"
  igw_id = module.InternetGateway.igw_id
  pb_id      = module.Routetable.pb_id
  
}
module "Routetable" {
  source = "./Modules/RouteTable"
  vpcid = module.vpc.vpc_id

}
module "RouteTableAssociation" {
  source = "./Modules/RouteTableAssociation"
  pvtsub1_id = module.subnet.pvtsub1_id
  pvtsub2_id = module.subnet.pvtsub2_id
  pubsub1_id = module.subnet.pubsub1_id
  pubsub2_id = module.subnet.pubsub2_id
  pv_id      = module.Routetable.pv_id
  pb_id      = module.Routetable.pb_id

}
module "InternetGateway" {
  source = "./Modules/InternetGateway"
  vpc_id = module.vpc.vpc_id
}
module "Database" {
  source = "./Modules/Database"
  sg_id = module.Security.sg_id
  datasubid = [module.subnet.pvtsub1_id,module.subnet.pvtsub2_id]
  
}
module "Security" {
  source = "./Modules/Security"
  vpcid  = module.vpc.vpc_id
}

module "Autoscaling" {
  source = "./Modules/Autoscaling"
  sg_id = module.Security.sg_id
  vpcid  = module.vpc.vpc_id
  pubsub1_id = module.subnet.pubsub1_id
  pubsub2_id = module.subnet.pubsub2_id
}

