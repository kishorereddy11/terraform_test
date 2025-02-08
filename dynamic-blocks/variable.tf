variable "ingress_port" {

  default = [
    {
      from_port = 22
      to_port   = 22

    },
    {
      from_port = 80
      to_port   = 80

    },

    {
      from_port = 3306
      to_port   = 3306
    },

    {
      from_port = 8080
      to_port   = 8080
    }
  ]
}