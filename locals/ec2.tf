resource "aws_instance" "myserver" {
  instance_type          = local.instance_type
  ami                    = locals.ami_id
  vpc_security_group_ids = [aws_security_group.allows_all.id]

  tags = {
    Name = local.name
  }
}

resource "aws_security_group" "allows_all" {
  name = "allow_all"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}