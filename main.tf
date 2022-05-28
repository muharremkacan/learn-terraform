provider "aws" {
  region = var.region
}

data "aws_ami_ids" "ubuntu" {
  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }

  owners = ["self"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami_ids.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
