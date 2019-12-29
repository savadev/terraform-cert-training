provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZIX6BKNO5MPS3MBE"
  secret_key = "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"
}

resource "aws_vpc" "bootcampVpc" {
  cidr_block = var.bootcampVpc_cidr_block

  tags = {
    Name        = var.app_name
    Environment = var.app_env
    Application = var.app_application
  }
}

resource "aws_subnet" "bootcampSubnet" {
  vpc_id            = aws_vpc.bootcampVpc.id
  cidr_block        = var.bootcamp_subnet_cidr_block
  availability_zone = var.bootcamp_subnet_az

  tags = {
    Name        = var.app_name
    Environment = var.app_env
    Application = var.app_application
  }
}

resource "aws_network_interface" "bootcampNetworkInterface" {
  subnet_id   = aws_subnet.bootcampSubnet.id
  private_ips = var.bootcamp_network_interface_private_ips

  tags = {
    Name        = var.app_name
    Environment = var.app_env
    Application = var.app_application
  }
}

resource "aws_instance" "bootcampInstance" {
  ami           = var.bootcamp_ami
  instance_type = var.bootcamp_instance_type

  network_interface {
    network_interface_id = aws_network_interface.bootcampNetworkInterface.id
    device_index         = var.bootcamp_instance_ni_device_index
  }

  tags = {
    Name        = var.app_name
    Environment = var.app_env
    Application = var.app_application
  }
}
