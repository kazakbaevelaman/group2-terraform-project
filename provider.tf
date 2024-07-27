provider "aws" {
  region = var.region
}


//  this configuration ensures that Terraform will use a compatible version of the AWS provider (4.36.x) from the HashiCorp Terraform Registry.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.36"
    }
  }
}