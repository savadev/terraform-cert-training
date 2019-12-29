variable "bootcampVpc_cidr_block" {
  type = string
}

variable "app_name" {
  type = string
}

variable "app_env" {
  type = string
}

variable "app_application" {
  type = string
}

variable "bootcamp_subnet_cidr_block" {
  type = string
}

variable "bootcamp_subnet_az" {
  type = string
}

variable "bootcamp_network_interface_private_ips" {
  type = list(string)
}

variable "bootcamp_ami" {
  type = string
}

variable "bootcamp_instance_type" {
  type = string
}

variable "bootcamp_instance_ni_device_index" {
  type = number
}
