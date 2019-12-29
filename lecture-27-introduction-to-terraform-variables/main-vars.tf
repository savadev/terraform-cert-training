variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block to define for the VPC we are creating"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC to create"
  default     = "BootcampVpc"
}

variable "vpc_environment" {
  type        = string
  description = "Name of the environment this VPC resides in"
  default     = "Experimental"
}

variable "vpc_application" {
  type        = string
  description = "The purpose of this VPC"
  default     = "Terraform Bootcamp"
}
