

resource "aws_key_pair" "vmUser-key" {
  key_name   = var.keyName
  public_key = file("${path.module}/id_rsa.pub")
}


resource "aws_security_group" "tf-sg-1-L" {
  name        = var.security-group-name
  description = "tf-created security group"

  dynamic "ingress" {
    for_each = "${var.ports}"
    iterator = port
    content {
      description = "ports values by using terraform dynamic block concept"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]


    }
  }


}