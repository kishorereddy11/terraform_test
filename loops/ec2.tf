resource "aws_instance" "expense" {
  count                  = length(var.instances)
  instance_type          = var.instance_type
  ami                    = var.ami
  vpc_security_group_ids = [aws_security_group.sg.id]
  # tags = {
  #   Name    = var.instances[count.index]
  # }

  tags = merge(var.common_tags,
  {
    Name =var.instances[count.index]
  })
}

resource "aws_instance" "name" {
  tags = {
    Name= "a",
    d="d"
  }
}


resource "aws_security_group" "sg" {
  name = "frontend_sg"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.expense_tag
}

