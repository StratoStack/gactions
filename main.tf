provider "aws" {
  region = "us-west-2"  # Ensure this matches your region
}

resource "random_id" "bucket_suffix" {
  byte_length = 8
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-s3-bucket-${random_id.bucket_suffix.hex}"  # Append unique suffix
  acl    = "private"
}
