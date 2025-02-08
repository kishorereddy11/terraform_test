variable "instances" {
  type = map
  default = {
    mysql ="t3.small"
    backend="t2.micro"
    frontend="t2.micro"
  }
}

variable "domain_name" {
    default = "kommanuthala.store"
  
}