provider "aws" {
    region = "ap-southeast-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-01938df366ac2d954"
    instance_type = "t3.micro"
}