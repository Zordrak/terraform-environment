output "core_sg_id" {
  value = "${aws_security_group.core.id}"
}

output "azs_available_names" {
  value = "${data.aws_availability_zones.available.names}"
}

output "private_nats_ids" {
  value = ["${aws_route_table.private_nats.*.id}"]
}

output "aws_region" {
  value = "${var.aws_region}"
}

output "region_az_count" {
  value = "${var.region_az_count}"
}

output "rtb_public_id" {
  value = "${aws_route_table.public.id}"
}
