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
