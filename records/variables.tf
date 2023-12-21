variable "hosted_zone_id" {
  description = "The ID of the hosted zone to create records in."
  type        = string
}


variable "hosted_zone_dns" {
  description = "The DNS name of the hosted zone to create records in."
  type        = string
}

variable "subdomains" {
  description = "A list of subdomains to create records for."
  type        = list(string)
}
variable "ttl" {
  description = "The TTL of the records to create."
  type        = number
}
variable "endpoint" {
  description = "The endpoint to create records for."
  type        = string
}
