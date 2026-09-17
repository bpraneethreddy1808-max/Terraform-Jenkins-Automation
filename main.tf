provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance
resource "aws_instance" "foo" {
  ami           = "ami-01a00762f46d584a1" # ap-south-1
  instance_type = "t3.micro"

  tags = {
    Name = "Ubuntu-Server"
  }
}

# S3 Bucket
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "testhydbucket-app-x9k2p7"

  tags = {
    Environment = "Dev"
    Name        = "Terraform-S3"
  }
}
  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}

# Create VPC
resource "aws_vpc" "demo-vpc" {
  cidr_block       = "11.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc"
  }
}


