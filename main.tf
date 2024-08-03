terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create AWS S3
resource "aws_s3_bucket" "bucket" {
  bucket = "shafiqs329072024" # Change to a globally unique name

  tags = {
    Name        = "shafiq Bucket" # Change to your own name
    Environment = "Dev"
  }
}
