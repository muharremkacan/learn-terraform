terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket = "timothybucket2123"
    key = "xxx.tfstate"
    region = "us-east-1"
 #   dynamodb_table = "timothytest"
  }
  
}
