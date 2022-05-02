# Extract existing data from AWS
data "aws_route53_zone" "cms_zone" {
  name         = var.zone_dns
  private_zone = true
}

# Route53 record for kiali service
resource "aws_route53_record" "kiali" {
  zone_id = aws_route53_zone.cms_zone.id
  name    = "kiali-${cluster-name}.batcave-dev.internal.cms.gov
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}

