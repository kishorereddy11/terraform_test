variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is RHEL 9 ami id"
  }

variable "instance_type" {
default = "t3.micro"
}

variable "ec2_tags" {
    default = {
        Project= "expense"
        Component= "backend"
        Env= "dev"
        Name= "expense-backend-dev"

    }
}
  variable "from_port" {
    default=22
  }

variable "to_port" {
    default = 22
  
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
  type = list(string)
  
}

variable "sg_tags" {
type = map(string)
default = {
  Name = "expense-backend-dev"
  Account= 124
}
}