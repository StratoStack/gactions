provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-s3-bucket-12345" # Replace with a unique name
  acl    = "private"
}
