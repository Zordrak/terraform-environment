#EBS creation related
variable "mod_ebs_count" {
  default = "1"
}
variable "mod_ebs_name" {
  type = "string"
  description = "Usually is your hostname for the instance"
  default = ""
}
variable "mod_ebs_is_encrypt" {
  type = "string"
  description = "Should the volume need to be encrypted"
  default = false
}
variable "mod_ebs_type" {
  type = "string"
  description = "specify one of AWS volumes types, default gp2"
  default = ""
}
variable "mod_ebs_size" {
  type = "string"
  description = "Specify instance size in GB"
  default = ""
}
variable "mod_ebs_use_snap" {
  type = "string"
  description = "Use snapshot for voulume source, snapshot have to fit volume so the size cannot be smaller than snapshot"
  default = ""
}
variable "mod_ebs_azs" {
  type = "string"
  description = "specify availibility zone where volume will exist"
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
variable "mod_ebs_mp"
  type = "string"
  description = "specify mountpoint for the volume, it can be anything except for / scope" 
  default = ""
}
