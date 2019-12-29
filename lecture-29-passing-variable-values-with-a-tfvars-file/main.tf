provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZIX6BKNO5MPS3MBE"
  secret_key = "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"
}

resource "aws_vpc" "bootcampVpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name        = var.vpc_name
    Environment = var.vpc_environment
    Application = var.vpc_application
  }
}
