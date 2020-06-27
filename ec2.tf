provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0cf94b1c148cb4b81"
  instance_type = "t2.micro"
}