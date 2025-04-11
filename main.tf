# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# provider "aws" {
#   region = var.region
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "ubuntu" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instance_name
#   }
# }

provider "cloudflare" {}

resource "cloudflare_dns_record" "chert_record" {
  zone_id = var.zone_id
  type = "A"
  name = var.name
  content = var.content
  ttl = 3600
  # proxied = false
  comment = var.comment
  # tags = ["owner:dns-team"]
}
