resource "aws_volume_attachment" "ebs_attach" {
  device_name = "${var.mod_ebs_mp}"
  volume_id = "${var.mod_ebs_vol_id}"
  instance_id = "${var.mod_ebs_inst_id}"
}
