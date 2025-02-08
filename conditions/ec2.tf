resource "aws_instance" "name" {
  instance_type = var.env == "prod" ? "t3.small" : "t3.micro"
  ami = var.ami
}

resource "aws_security_group" "sg" {
  name = "allow"
  egress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }

  ingress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
  }

}