terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

# AWS
  backend "s3" {
    bucket         = "my-terraform-remote-state-demo-bucket"  # from backend-setup output
    key            = "demo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-demo"
    encrypt        = true
  }
}

# Azure
terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "terraformstorageacct"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

# GCP

terraform {
  backend "gcs" {
    bucket  = "terraform-state-demo"
    prefix  = "terraform/state"
  }
}

  backend "gcs" {
    bucket  = "terraform-state-demo"
    prefix  = "terraform/state"
  }
}




provider "aws" {
  region = "us-east-1"
}
