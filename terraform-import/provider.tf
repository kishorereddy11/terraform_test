provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws ={
        version = "5.8.0"
        source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "terraform-remote-state-kishor-prod"
    key = "import"
    region = "us-east-1"
    dynamodb_table = "terraform-remote-state-kishor-prod"
  }
}