output "mod_ebs_vol_id" {
  value = "${aws_ebs_volume.create_ebs_module.id}"
}
output "volume_mountpoint" {
  value = "${var.mod_ebs_mp}"
}
