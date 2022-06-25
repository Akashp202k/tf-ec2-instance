provider "aws" {
  region     = "us-east-1"
  access_key = "########################"
  secret_key = "*****************************************"
}

resource "aws_instance" "tf-ec2-1" {
  ami             = var.amiId
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.tf-sg-1-L.name}"] ## because security group can be multiple its type is list


  tags = {
    Name = "${var.tag-1}"
  }

}