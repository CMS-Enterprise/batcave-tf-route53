output zone_data {
    value = data.aws_route53_zone.cms_zone
}

output gitlab_dns {
    value =  aws_route53_record.gitlab.fqdn
}

output jaeger_dns {
    value =  aws_route53_record.jaeger.fqdn
}

output kiali_dns {
    value =  aws_route53_record.kiali.fqdn
}

output alertmanager_dns {
    value =  aws_route53_record.alertmanager.fqdn
}

output grafana_dns {
    value =  aws_route53_record.grafana.fqdn
}