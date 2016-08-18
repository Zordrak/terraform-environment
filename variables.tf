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

variable "peer_matrix" {
  type        = "list"
  default     = []
  #   "0123456789012,vpc-01234567890123456,10.99.0.0/16",
  #   "2109876543210,vpc-65432109876543210,172.16.0.0/16"
  # ]
  description = "List of peering partner tuples (['peer_aws_account_id,peer_vpc_id,peer_cidr_block']) with which to create vpc peering connections"
}

variable "peering_connections" {
  type = "list"
  default = []
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
  description = "$${remote_state.aws_internet_gateway.internet_gateway.id}"
}

variable "bootstrap_public_route_table_id" {
  type        = "string"
  description = "$${remote_state.aws_route_table.bootstrap_public.id}"
}

### This is an example of a specific bucket for a specific purpose ###

variable "example_bucket_name" {
  type        = "string"
  description = "Example Bucket for an example microservice to do example things with"
  default     = "" #testbucket"
}
