###############################################################################
# 🌍 oVirt provider configuration
###############################################################################
# Connection parameters for oVirt / zVirt API
###############################################################################

provider "ovirt" {
  url          = var.api_url
  username     = var.username
  password     = var.password
  tls_insecure = true
}