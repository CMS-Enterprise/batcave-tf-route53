terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.61.0"
    }
  }
  required_version = ">= 1.2"
}

# Route53 record for services
resource "aws_route53_record" "routes" {
  for_each        = toset(var.subdomains)
  zone_id         = var.hosted_zone_id
  name            = "${each.key}.${var.hosted_zone_dns}"
  type            = "CNAME"
  ttl             = var.ttl
  records         = [var.endpoint]
  allow_overwrite = true
}
