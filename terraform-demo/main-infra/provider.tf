terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "my-terraform-remote-state-demo-bucket"  # from backend-setup output
    key            = "demo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-demo"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
