#EBS creation related
variable "mod_ebs_name" {
  type = "string"
  description = "Usually is your hostname for the instance"
  default = ""
}
variable "ebs_is_encrypt" {
  type = "string"
  description = "should the volume need to be encrypted"
  default = false
}
variable "mod_ebs_type" {
  type = "string"
  description = "specify one of AWS volumes types, default gp2"
  default = "gp2"
}
variable "mod_ebs_size" {
  type = "string"
  description = "Specify instance size in AWS format"
}
variable "mod_ebs_use_snap" {
  type = "string"
  description = "Use snapshot for voulume source, snapshot have to fit volume so the size cannots be smaller than snapshot"
  default = ""
}
variable "mod_ebs_azs" {
  type = "list"
  description = "specify availibility zone"
}
variable "mod_ebs_env" {
  type = "string"
  description = "used for tags, Environment tag"
  default = "default_value"
}
variable "mod_ebs_app" {
  type = "string"
  description = "used for tags, Application tag"
  default = "default_value"
}
variable "mod_ebs_tier" {
  type = "string"
  description = "used for tags, Tier tag"
  default = "default_value"
}
variable "mod_ebs_role" {
  type = "string"
  description = "used for tags, Role tag"
  default = "default_value"
}
variable "mod_ebs_mp" {
  type = "string"
  description = "specify mountpoint for the volume, it need to meet following critera, mountpoint not used and not sda1(root volume for instance)"
}
variable "mod_ebs_inst_id" {
  type = "string"
  description = "specift instance_id which will have volume attached or created/attacged"
}
