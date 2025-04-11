# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  /*
  cloud {
    organization = "tutorial-HCP-mzdan"

    workspaces {
      name = "learn-terraform"
    }
  }
  */

  # required_providers {
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "~> 5.31.0"
  #   }
  # }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.3.0"
    }
  }

  required_version = "~> 1.2"
}
