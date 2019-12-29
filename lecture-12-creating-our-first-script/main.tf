provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZIX6BKNO5MPS3MBE"
  secret_key = "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"
}

resource "aws_vpc" "bootcampVpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "BootcampVpc"
    Environment = "Experimental"
    Application = "TerraformBootcamp"
  }
}
