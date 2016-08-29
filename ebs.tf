#Available variables
#mod_ebs_name
#ebs_is_encrypt
#mod_ebs_type
#mod_ebs_size
#mod_ebs_use_snap
#mod_ebs_azs
#mod_ebs_env
#mod_ebs_app
#mod_ebs_tier
#mod_ebs_role
#mod_ebs_mp
#mod_ebs_inst_id
#

module "create_ebs" {
  source = "support/ebs"
  mod_ebs_name = "test"
  mod_ebs_size = "50"
  mod_ebs_type = "io1"
}
