# Extract existing data from AWS
data "aws_route53_zone" "cms_zone" {
  name         = var.zone_dns
  private_zone = true
}

# Route53 record for kiali service
resource "aws_route53_record" "routes" {
  count   = length(var.apps)
  zone_id = data.aws_route53_zone.cms_zone.id
  name    = var.apps[count.index]
  type    = "CNAME"
  ttl     = var.ttl
  records = [var.elb_dns]
}
