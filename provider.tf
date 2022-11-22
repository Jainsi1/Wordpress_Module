terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
provider "aws" {
  profile = "jainsi"
  region     = "us-east-1"
  
}

