terraform {
  required_version = "~> 1.12.2"

  backend "s3" {
    bucket  = "aws-virtual-machine-nickolas-corazza"
    key     = "tfstate/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.9.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
