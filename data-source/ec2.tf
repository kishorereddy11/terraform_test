resource "aws_instance" "expense" {
  ami = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
#   vpc_security_group_ids = 
}