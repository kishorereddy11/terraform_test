resource "aws_instance" "name" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"

provisioner "local-exec" {
  command = "echo  ${self.private_ip} > inventory"
}

provisioner "remote-exec" {
  connection {
    type = "ssh"
  user = "ec2-user"
  password = "DevOps321"
  host = self.public_ip
  }
  inline = [ 
    "sudo dnf install nginx -y",
    "sudo systemctl start nginx"
   ]
}
}



resource "aws_security_group" "sg" {
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