output "mod_ebs_vol_id" {
  value = "${aws_ebs_volume.create_ebs_module.id}"
}
output "mod_ebs_vol_mountpoint" {
  value = "${var.mod_ebs_mp}"
}
output "mod_ebs_vol_device" {
  value = "${var.mod_ebs_dev}"
}
