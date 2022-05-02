output "zone_data" {
  value = data.aws_route53_zone.cms_zone
}

output "gitlab_dns" {
  value = aws_route53_record.routes.*.fqdn
}
