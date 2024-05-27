terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }

  backend "s3" {
    bucket = "daws76sannavarapu"
    key    = "newfile"
    region = "us-east-1"
    dynamodb_table = "daws76slock"
  }
}

provider "aws" {
  region = "us-east-1" 
}