# Extract existing data from AWS
data "aws_route53_zone" "cms_zone" {
  name         = var.zone_dns
  private_zone = true
}

# Route53 record for kiali service
resource "aws_route53_record" "kiali" {
  count   = var.environment = "dev" ? 0 : 1 
  zone_id = data.aws_route53_zone.cms_zone.id
  name    = "kiali-${var.cluster_name}.batcave-dev.internal.cms.gov"
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}

