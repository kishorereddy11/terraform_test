terraform {
  required_providers {
    aws= {
        source = "hashicorp/aws"
        version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "awsterraformdevops"
    key = "foreach"
    dynamodb_table = "romte-state-locking"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}