terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket = "my-tf-test-bucket-111"
    key = "xxx.tfstate"
    region = "us-east-1"
  }
  
}
