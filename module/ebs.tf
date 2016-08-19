resource "aws_ebs_volume" "create_ebs_module" {
    encrypted = "${var.ebs_is_encrypted}"
    type = "${var.ebs_type}"
    size = "${var.ebs_size}"
    snapshot_id = "${var.ebs_snapshot}"
    availability_zone = "${var.availability_zone}"
    tags {
      Name = "${var.name}-${var.instance_id}"
      Environment = "${var.tags["key1"]}"
      Application = "${var.tags["key2"]}"
      Tier = "${var.tags["key3"]}"
      Role = "${var.name}"
      Resource = "EBS${var.ebs_mountpoint}"
    }
}



#TODO
# Inputs

variable "name" {
  type = "string"
  description = "describe your variable"
  default = ""
}
variable "ebs_size" {
  type = "string"
  description = "describe your variable"
}
variable "ebs_snapshot" {
  type = "string"
  default = ""
}
variable "ebs_mountpoint" {
  type = "string"
  description = "describe your variable"
}
variable "instance_id" {
  type = "string"
  description = "describe your variable"
}
variable "name" {
  type = "map"
  description = "describe your variable"
  default = {
  }
}
variable "ebs_is_encrypted" {
  type = "string"
  description = "describe your variable"
  default = false
}
variable "ebs_type" {
  type = "string"
  description = "describe your variable"
  default = "gp2"
}
variable "tags" {
  type = "map"
  description = "describe your variable"
  default = {
    key1 = "val1"
    key2 = "val2"
  }
}
variable "availability_zone" {
  type = "string"
  description = "describe your variable"
  default = "default_value"
}
