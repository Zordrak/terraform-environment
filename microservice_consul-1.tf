module "microservice_consul-1" {
  source                          = "github.com/Zordrak/terraform-microservice.git"
  additional_security_group_ids   = ["${aws_security_group.core.id}"]
  asg_size_max                    = "${lookup(var.microservice_consul-1, asg_size_max)}"
  asg_size_min                    = "${lookup(var.microservice_consul-1, asg_size_min)}"
  availability_zones              = "${data.aws_availability_zones.available.names}"
  aws_region                      = "${var.aws_region}"
  lc_ami_id                       = "${lookup(var.microservice_consul-1, ami_id)}"
  lc_instance_type                = "${lookup(var.microservice_consul-1, instance_type)}"
  name                            = "consul-1"
  subnets_cidr                    = ["${var.consul-1_subnets_cidr}"]
  subnets_map_public_ip_on_launch = "${lookup(var.microservice_consul-1, map_public_ip)}"
  subnets_route_tables            = ["${aws_route_table.private_nats.*.id}"]
  vpc_id                          = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "${lookup(var.microservice_consul-1, tier)}"
  }
}

resource "aws_route_table_association" "consul-1_private-nat" {
  count          = "${var.region_az_count}"
  subnet_id      = "${module.microservice_consul-1.subnet_ids[count.index]}"
  route_table_id = "${element(aws_route_table.private_nats.*.id, count.index)}"
}
