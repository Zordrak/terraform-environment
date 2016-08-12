variable "aws_region" {
  type        = "string"
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "vpc_id" {
  type        = "string"
  description = "Parent VPC ID"
  default     = "vpc-00000000000000000"
}

variable "environment" {
  type        = "string"
  description = "Environment Name"
  default     = "ENV"
}

variable "project" {
  type        = "string"
  description = "Project Name"
  default     = "PROJ"
}

variable "region_az_count" {
  type        = "string"
  default     = "3"
  description = "This is a dirty horrible hack to circumvent the issue raised in https://github.com/hashicorp/terraform/issues/1497. counts are graphed too early to allow interpolation and until Hashicorp implement JIT graphing for count, there are few ways to define a count for derived lists"
}

### The following are here temporarily until invoked via remote state access to the bootstrap module ###

variable "internet_gateway_id" {
  type        = "string"
  description = "$${aws_internet_gateway.internet_gateway.id}"
}

variable "bootstrap_public_route_table_id" {
  type        = "string"
  description = "$${aws_route_table.bootstrap_public.id}"
}

### Microservice configuration ###
variable "microservice_consul-1" {
  type = "map"
  default {
    ami_id        = "ami-00000000000000000"
    instance_type = "t2.micro"
    asg_size_min  = "1"
    asg_size_max  = "1"
    tier          = "PRI"
    map_public_ip = "false"
  }
}
variable "consul-1_subnets_cidr" {
  type = "list"
  default = ["10.0.10.0/24"]
}
