module "microservice_pritest" {
  source                          = "github.com/Zordrak/terraform-microservice.git"
  asg_size_max                    = "3"
  asg_size_min                    = "3"
  availability_zones              = "${data.aws_availability_zones.available.names}"
  aws_region                      = "${var.aws_region}"
  lc_ami_id                       = "ami-00000000000000000"
  lc_instance_type                = "t2.micro"
  name                            = "pritest"
  subnets_cidr                    = ["10.10.10.0/24", "10.10.20.0/24", "10.10.30.0/24"]
  subnets_map_public_ip_on_launch = false
  subnets_route_tables            = ["${aws_route_table.private_nats.*.id}"]
  vpc_id                          = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PRI"
  }
}

resource "aws_route_table_association" "pritest_private-nat" {
  # This count is a manual count of the cidr array passed to the module until Hashicorp implement JIT count interpolation
  count          = 3
  subnet_id      = "${module.microservice_pritest.subnet_ids[count.index]}"
  route_table_id = "${element(aws_route_table.private_nats.*.id, count.index)}"
}
