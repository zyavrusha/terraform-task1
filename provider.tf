
# define provider 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50"
      region  = "us-east-1"
    }
  }
}