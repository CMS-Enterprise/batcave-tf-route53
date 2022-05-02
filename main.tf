# Extract existing data from AWS
data "aws_route53_zone" "cms_zone" {
  name         = "batcave-dev.internal.cms.gov"
  private_zone = true
}

# Route53 record for kiali service
# resource "aws_route53_record" "kiali" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = "kiali.batcave-dev.internal.cms.gov"
#   type    = "CNAME"
#   ttl     = "60"
#   records = [var.elb_dns]
# }