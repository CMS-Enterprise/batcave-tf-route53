# batcave-tf-route53

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_records"></a> [records](#module\_records) | ./records | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_route53_zone.cms_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint_subdomain_map"></a> [endpoint\_subdomain\_map](#input\_endpoint\_subdomain\_map) | Map of type: {public:{endpoint: <lb-dns>, subdomains: ["subdomain1", "subdomain2"]}} | `map(any)` | n/a | yes |
| <a name="input_hosted_zone_dns"></a> [hosted\_zone\_dns](#input\_hosted\_zone\_dns) | base domain associated with the private hosted zone for this account | `string` | `""` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | n/a | `string` | `"60"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_records"></a> [records](#output\_records) | n/a |
| <a name="output_zone_data"></a> [zone\_data](#output\_zone\_data) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
