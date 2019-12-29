variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block to define for the VPC we are creating"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC to create"
}

variable "vpc_environment" {
  type        = string
  description = "Name of the environment this VPC resides in"
}

variable "vpc_application" {
  type        = string
  description = "The purpose of this VPC"
}
