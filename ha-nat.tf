module "ha-nat" {
  source               = "github.com/Zordrak/terraform-ha-nat.git"
  availability_zones   = "${data.aws_availability_zones.available.names}"
  aws_region           = "${var.aws_region}"
  gateway_route_tables = ["${aws_route_table.private_nats.*.id}"]
  name                 = "ha-nat"
  subnets_cidr         = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
  subnets_route_tables = ["${aws_route_table.public.id}"]
  vpc_id               = "${var.vpc_id}"

  tags {
    Environment = "${var.environment}"
    Application = "${var.project}"
    Tier        = "PUB"
  }
}

resource "aws_route_table_association" "ha-nat_public" {
  # This count is a manual count of the cidr array passed to the module until Hashicorp implement JIT count interpolation
  count          = "3"
  subnet_id      = "${module.ha-nat.subnet_ids[count.index]}"
  route_table_id = "${aws_route_table.public.id}"
}
