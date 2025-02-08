resource "aws_instance" "server" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = ["aws_security_group_server_sg.id"]

}

resource "aws_security_group" "server_sg" {
  name = "server_sg"
  description = "allow all out going traffic and incoming traffic 22"

 egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.cidr_blocks
}

ingress {
    from_port = var.from_port
    to_port = var.to_port
    protocol = "tcp"
    cidr_blocks = var.cidr_blocks
}

 tags = var.sg_tags
}


