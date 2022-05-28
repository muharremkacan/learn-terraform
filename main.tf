provider "aws" {
  region = var.region
}


resource "aws_instance" "ubuntu" {
  ami           = "ami-09d56f8956ab235b3"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "b" {
  id = "my-tf-test-bucket-111"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
