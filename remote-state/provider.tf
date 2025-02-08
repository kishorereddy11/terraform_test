terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "remote-file-kishor"
    key="ec2-demo"
    region = "us-east-1"
    dynamodb_table = "romte-state-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}

