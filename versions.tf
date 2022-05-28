terraform {
  required_version = ">= 0.12"

  backend "s3" {
    name = "my-s3"
    bucket = aws_s3_bucket.b
    key = "xxx.tfstate"
    region = var.region
  }
  
}
