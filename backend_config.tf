terraform {
  backend "s3" {
    bucket         = "ehtclusters-tio-terraform-state"
    key            = "ehtInfra.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ehtclusters-tio-vpc-terraform-state-lock-dynamodb"
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
