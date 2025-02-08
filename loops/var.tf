variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "instances" {
  default = ["frontend", "backend", "mysql"]
  
}

variable "target_instance_name" {
  default = "frontend"
}
variable "zone_id" {
  default = "Z10194942SF7GBVICSU5"
  
}

variable "domain_name" {
  default = "kommanuthala.store"
}

variable "expense_tag" {
  default = {
    Name = "expense"
    Env = "dev"
  }
  
}

variable "common_tags" {
  default = {
    project="expense"
    Env="dev"
  }
  
}