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
