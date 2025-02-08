# resource "aws_route53_record" "expense" {
#   count = 3
#   zone_id = var.zone_id
#   name = "${var.instances[count.index]}.${var.domain_name}"
#   type = "A"
#   ttl = 1
#   records = [aws_instance.expense[count.index].private_ip]
#   allow_overwrite = true
# }

# resource "aws_route53_record" "frontend_ip" {
#   zone_id = var.zone_id
#   name = var.domain_name
#   type = "A"
#   ttl = 1
#   records = [aws_instance.expense[1].public_ip]
#   allow_overwrite = true
# }