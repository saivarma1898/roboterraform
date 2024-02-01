terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "saik.online"
    key    = "roboshop-terraformt"
    region = "us-east-1"
    dynamodb_table = "saik-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}