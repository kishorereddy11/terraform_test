resource "aws_instance" "name" {
    for_each = var.instances
  instance_type = each.value
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
Name= each.key
purpose="terraform"
  }
}

resource "aws_security_group" "sg" {
  
  name = "test"
  ingress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }
  egress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }

}

output "ec2_info" {
  value = aws_instance.name
}