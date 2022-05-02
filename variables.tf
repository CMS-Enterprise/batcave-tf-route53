variable elb_dns {
    description = "NLB DNS endpoint"
    default = ""
}

variable zone_dns {
    description = "wild card dns for each account"
    default = ""
}

variable environment {
    description = "environment"
    default = "dev"
}

variable cluster_name {
    description = "this will create records in dev without conficts"
    default = "srii-dev"
}

variable "apps" {
    default = [
        "kiali.batcave-dev.internal.cms.gov",
        "code.batcave-dev.internal.cms.gov",
        "tracing.batcave-dev.internal.cms.gov",
        "grafana.batcave-dev.internal.cms.gov"
    ]
}