resource "aws_instance" "name" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]

}

resource "aws_security_group" "sg" {
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.ingress_port
    content {
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value.to_port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }



}