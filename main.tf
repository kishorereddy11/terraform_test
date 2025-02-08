module "ec2_test" {
  source = "git::https://github.com/kishorereddy11/terraform-module.git//ec2-module?ref=main"
  sg_id = "sg-06664a65d9522acf5"
}