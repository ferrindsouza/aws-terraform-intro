# This is where to configure providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region  = "us-east-1"  # Change to your preferred region
  profile = "Admin"     # Use your SSO profile name
  
  default_tags {
    tags = {
      Management = "Terraform"
    }
  }
}