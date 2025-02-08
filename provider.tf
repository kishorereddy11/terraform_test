terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-remote-state-kishor-dev"
    dynamodb_table = "terraform-remote-state-kishor-dev"
    region         = "us-east-1"
    key            = "ec2_test"
  }
}

provider "aws" {
  region = "us-east-1"
}

