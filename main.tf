# Extract existing data from AWS
data "aws_route53_zone" "cms_zone" {
  name         = var.zone_dns
  private_zone = true
}

# Route53 record for kiali service
resource "aws_route53_record" "kiali" {
  zone_id  = data.aws_route53_zone.cms_zone.id
  name    = ( 
      var.environment == "dev" ? "kiali-${var.cluster_name}.batcave-dev.internal.cms.gov" : (
          var.environment == "test" ? "kiali.batcave-test.internal.cms.gov" : "kiali.batcave.internal.cms.gov"
          )
      )
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}

# Route53 record for jaeger service
resource "aws_route53_record" "jaeger" {
  zone_id = data.aws_route53_zone.cms_zone.id
  name    = ( 
      var.environment == "dev" ? "tracing-${var.cluster_name}.batcave-dev.internal.cms.gov" : (
          var.environment == "test" ? "tracing.batcave-test.internal.cms.gov" : "tracing.batcave.internal.cms.gov"
          )
      )
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}


# Route53 record for gitlab service
resource "aws_route53_record" "gitlab" {
  zone_id = data.aws_route53_zone.cms_zone.id
  name    = ( 
      var.environment == "dev" ? "code-${var.cluster_name}.batcave-dev.internal.cms.gov" : (
          var.environment == "test" ? "code.batcave-test.internal.cms.gov" : "code.batcave.internal.cms.gov"
          )
      )
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}


# Route53 record for alert manager service
resource "aws_route53_record" "alertmanager" {
  zone_id = data.aws_route53_zone.cms_zone.id
  name    = ( 
      var.environment == "dev" ? "alertmanager-${var.cluster_name}.batcave-dev.internal.cms.gov" : (
          var.environment == "test" ? "alertmanger.batcave-test.internal.cms.gov" : "alertmanager.batcave.internal.cms.gov"
          )
      )
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}


# Route53 record for grafana service
resource "aws_route53_record" "grafana" {
  zone_id = data.aws_route53_zone.cms_zone.id
  name    = ( 
      var.environment == "dev" ? "grafana-${var.cluster_name}.batcave-dev.internal.cms.gov" : (
          var.environment == "test" ? "grafana.batcave-test.internal.cms.gov" : "grafana.batcave.internal.cms.gov"
          )
      )
  type    = "CNAME"
  ttl     = "60"
  records = [var.elb_dns]
}


