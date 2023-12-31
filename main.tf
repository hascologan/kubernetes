terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = var.region
  profile = var.profile

  default_tags {
    tags = {
        resource-created-by = "terraform"
    }
  }
}

# Get account information
data "aws_canonical_user_id" "current" {}
data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_region" "current" {}