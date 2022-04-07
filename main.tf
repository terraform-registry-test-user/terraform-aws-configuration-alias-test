terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.8.0"
      configuration_aliases = [ aws.us-east ]
    }
  }
}

resource "aws_s3_bucket" "foo" {
  provider =  aws.us-east
  bucket = "foo-bucket"
}

resource "aws_s3_bucket" "bar" {
  provider = aws
  bucket = "bar-bucket"
}
