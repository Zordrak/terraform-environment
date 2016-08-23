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

variable "bucket_name" {
  type        = "string"
  description = "Bucket name"
  default     = ""
}

### The following are here temporarily until invoked via remote state access to the bootstrap module ###

# variable "internet_gateway_id" {
#   type        = "string"
#   description = "$${remote_state.aws_internet_gateway.internet_gateway.id}"
# }

# variable "private_nat_route_table_ids" {
#   type        = "string"
#   description = "[$${remote_state.aws_route_table.private_nats.*.id}]"
# }

# variable "private_nonat_route_table_id" {
#   type        = "string"
#   description = "$${remote_state.aws_route_table.private-nonat.id}"
# }

# variable "public_route_table_id" {
#   type        = "string"
#   description = "$${remote_state.aws_route_table.public.id}"
# }
