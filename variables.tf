variable "elb_dns" {
  description = "NLB DNS endpoint"
  default     = ""
}

variable "zone_dns" {
  description = "wild card dns for each account"
  default     = ""
}

variable "apps" {
  type = list(string)
  default = [
    "kiali.batcave-dev.internal.cms.gov",
    "code.batcave-dev.internal.cms.gov",
    "tracing.batcave-dev.internal.cms.gov",
    "grafana.batcave-dev.internal.cms.gov"
  ]
}

variable "ttl" {
    default ="60"
}