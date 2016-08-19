output "availability_zones" {
  value = "${data.aws_availability_zones.available.names}"
}

output "aws_region" {
  value = "${var.aws_region}"
}

output "core_sg_id" {
  value = "${aws_security_group.core.id}"
}

output "region_az_count" {
  value = "${var.region_az_count}"
}

output "azs_available_names" {
  value = "${data.aws_availability_zones.available.names}"
}

# output "vpc_id" {
#   value = "${aws_vpc.vpc.id}"
# }

# output "private_nats_ids" {
#   value = ["${aws_route_table.private_nats.*.id}"]
# }
