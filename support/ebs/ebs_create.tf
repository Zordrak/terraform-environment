resource "aws_ebs_volume" "create_ebs_module" {
    encrypted = "${var.mod_ebs_encrypted}"
    type = "${var.mod_ebs_type}"
    size = "${var.mod_ebs_size}"
    snapshot_id = "${var.mod_ebs_use_snap}"
    availability_zone = "${var.mod_ebs_azs}"
    tags {
      Name = "${var.mod_ebs_name}-${var.mod_ebs_instance_id}"
      Environment = "${var.mod_ebs_env}"
      Application = "${var.mod_ebs_app}"
      Tier = "${var.mod_ebs_tier}"
      Role = "${var.mod_ebs_role}"
      Resource = "EBS${var.mod_ebs_mp}"
    }
}
