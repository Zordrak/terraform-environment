#EBS creation related
variable "mod_ebs_name" {
  type = "string"
  description = "Usually is your hostname for the instance"
  default = ""
}
variable "mod_ebs_is_encrypt" {
  type = "string"
  description = "should the volume need to be encrypted"
  default = false
}
variable "mod_ebs_type" {
  type = "string"
  description = "specify one of AWS volumes types, default gp2"
  default = ""
}
variable "mod_ebs_size" {
  type = "string"
  description = "Specify instance size in AWS format"
  default = ""
}
variable "mod_ebs_use_snap" {
  type = "string"
  description = "Use snapshot for voulume source, snapshot have to fit volume so the size cannots be smaller than snapshot"
  default = ""
}
variable "mod_ebs_azs" {
  type = "string"
  description = "specify availibility zone"
  default = ""
}
variable "mod_ebs_env" {
  type = "string"
  description = "used for tags, Environment tag"
  default = ""
}
variable "mod_ebs_app" {
  type = "string"
  description = "used for tags, Application tag"
  default = ""
}
variable "mod_ebs_tier" {
  type = "string"
  description = "used for tags, Tier tag"
  default = ""
}
variable "mod_ebs_role" {
  type = "string"
  description = "used for tags, Role tag"
  default = ""
}
variable "mod_ebs_mp" {
  type = "string"
  description = "specify mountpoint for the volume, it need to meet following critera, mountpoint not used and not sda1(root volume for instance)"
  default = ""
}
variable "mod_ebs_inst_id" {
  type = "string"
  description = "specify instance_id which will have volume attached or created/attached"
  default = ""
}
variable "mod_ebs_vol_id" {
  type = "string"
  description = "specify volume_id to be attached for the selected instance"
  default = ""
}
