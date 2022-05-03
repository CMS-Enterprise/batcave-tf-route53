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
  default = []
}

variable "ttl" {
    default ="60"
}