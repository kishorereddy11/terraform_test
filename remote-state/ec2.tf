resource "aws_instance" "name" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]
}

resource "aws_security_group" "sg" {
  name = "state_file"
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}