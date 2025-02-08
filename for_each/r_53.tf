resource "aws_route53_record" "name" {
  for_each = aws_instance.name
  zone_id = local.zone_id
  name = each.key == "frontend" ? var.domain_name :"${each.key}.${var.domain_name}"
  type ="A"
  ttl = 1
allow_overwrite = true
 records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip] 
}