module "aws_ebs_volume" "create_ebs" {
    source = "module"
#    encrypted = "${var.ebs_is_encrypted}"
    ebs_type = "gp2"
    ebs_size = "50G"
    ebs_mountpoint = "/test"
    instance_id = "id-23451345"
    availability_zone = "eu-west-1"
    tags {
      Name = "teset"
      Environment = "key1"
      Application = "key2"
      Tier = "key3"
      Role = "key4"
      Resource = "EBS/test"
    }
}



#TODO
# Inputs
# Outputs
# Resource iteration
