variable "security-group-name" {
  type = string
}

variable "ports" {
  type = list(number)
}

output "SG-name" {
  value = "${aws_security_group.tf-sg-1-L.name}"
}

output "security-group-id" {
  value = "${aws_security_group.tf-sg-1-L.id}"
}