# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# output "instance_ami" {
#   value = aws_instance.ubuntu.ami
# }

# output "instance_arn" {
#   value = aws_instance.ubuntu.arn
# }

output "record_id" {
  value = cloudflare_dns_record.chert_record.id
}

output "record_name" {
  value = cloudflare_dns_record.chert_record.name
}

output "record_type" {
  value = cloudflare_dns_record.chert_record.type
}

output "record_content" {
  value = cloudflare_dns_record.chert_record.content
}

output "record_ttl" {
  value = cloudflare_dns_record.chert_record.ttl
}

output "record_proxiable" {
  value = cloudflare_dns_record.chert_record.proxiable
}
