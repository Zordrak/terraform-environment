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
  default     = "testenv"
}

variable "project" {
  type        = "string"
  description = "Project Name"
  default     = "testproj"
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

### These are for an example of a specific bucket for a specific purpose ###

variable "example_bucket_name" {
  type        = "string"
  description = "Example Bucket for an example microservice to do example things with"
  default     = "testbucket"
}

### Playing about ###

variable "peer_matrix" {
  type = "list"
  default = []
}

variable "peering_connections" {
  type = "list"
  default = []
}
