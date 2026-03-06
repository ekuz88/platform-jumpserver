terraform {
  required_version = ">= 1.5.0"

  required_providers {
    ovirt = {
      source  = "oVirt/ovirt"
      version = "~> 2.2.0"
    }
  }
}