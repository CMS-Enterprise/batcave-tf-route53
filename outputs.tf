output zone_data {
    value = data.aws_route53_zone.cms_zone
}

output test {
    value = ( 
      var.environment == "dev" ? "kiali-${var.cluster_name}.batcave-dev.internal.cms.gov" : (
          var.environment == "test" ? "kiali.batcave-test.internal.cms.gov" : "kiali.batcave.internal.cms.gov"
          )
      )
}