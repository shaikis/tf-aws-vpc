terraform {
  backend "s3" {
    bucket         = "nov5s3"
    key            = "ehtInfra.tfstate"
    region         = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  required_version = "~> 0.14.5"
}

provider "aws" {
 region = var.aws_region
 version = "~> 3.31.0"
}
