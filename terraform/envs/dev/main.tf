###############################################################################
# 🖥️ First test VM
###############################################################################
# Creates a virtual machine from the prepared base template.
###############################################################################

resource "ovirt_vm" "test_vm" {
  name        = "tf-redos-test01"
  cluster_id  = var.cluster_id
  template_id = var.template_id

  memory = 4294967296

  cpu_cores   = 2
  cpu_sockets = 1
  cpu_threads = 1
}