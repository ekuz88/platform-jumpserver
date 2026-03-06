###############################################################################
# 🌍 Terraform variables
###############################################################################
# This file defines input variables used by the Terraform configuration.
# Values are provided from:
#   - terraform.tfvars
#   - TF_VAR_* environment variables
#   - CI/CD variables
###############################################################################

###############################################################################
# 🔗 oVirt / oVirt API endpoint
###############################################################################
# Full API endpoint of the virtualization manager.
###############################################################################
variable "api_url" {
  type        = string
  description = "oVirt API URL"
}

###############################################################################
# 👤 Service account username
###############################################################################
# Service account used by Terraform to authenticate to the API.
###############################################################################
variable "username" {
  type        = string
  description = "Service account username"
}

###############################################################################
# 🔑 Service account password
###############################################################################
# Password for the service account.
# Marked as sensitive to reduce exposure in logs and plan output.
###############################################################################
variable "password" {
  type        = string
  description = "Service account password"
  sensitive   = true
}

###############################################################################
# 🔐 TLS validation behavior
###############################################################################
# true  - skip certificate validation, useful in labs
# false - validate TLS certificate, recommended for production
###############################################################################
variable "insecure" {
  type        = bool
  description = "Skip TLS certificate validation"
  default     = true
}

###############################################################################
# 🏢 Existing cluster ID
###############################################################################
# ID of the target cluster where Terraform should place the VM.
# The public oVirt provider expects cluster_id for ovirt_vm and does not
# expose a dedicated ovirt_cluster data source.
###############################################################################
variable "cluster_id" {
  type        = string
  description = "Target cluster ID"
}

###############################################################################
# 📦 Existing template ID
###############################################################################
# ID of the template used to clone a new virtual machine.
###############################################################################
variable "template_id" {
  type        = string
  description = "Source template ID"
}

###############################################################################
# 🧠 VM memory in bytes
###############################################################################
# Example:
#   2147483648 = 2 GiB
#   4294967296 = 4 GiB
###############################################################################
variable "vm_memory" {
  type        = number
  description = "Virtual machine memory in bytes"
  default     = 4294967296
}