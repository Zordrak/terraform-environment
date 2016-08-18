# module "microservice_pubtest" {
#   source                          = "github.com/Zordrak/terraform-microservice.git"
#   asg_size_max                    = "3"
#   asg_size_min                    = "3"
#   availability_zones              = "${data.aws_availability_zones.available.names}"
#   aws_region                      = "${var.aws_region}"
#   lc_ami_id                       = "ami-00000000000000000"
#   lc_instance_type                = "t2.micro"
#   name                            = "pubtest"
#   subnets_cidr                    = ["10.10.5.0/24", "10.10.6.0/24", "10.10.7.0/24"]
#   subnets_map_public_ip_on_launch = true
#   subnets_route_tables            = ["${aws_route_table.public.id}"]
#   vpc_id                          = "${var.vpc_id}"

#   tags {
#     Environment = "${var.environment}"
#     Application = "${var.project}"
#     Tier        = "PUB"
#   }
# }
