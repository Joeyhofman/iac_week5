resource "local_file" "ansible_inventory_file" {
  filename = "../ansible/inventory.ini"
  content  = <<EOT
[all]
app1 ansible_host=${esxi_guest.ubuntu_test.ip_address}

[all:vars]
ansible_user=terraform
ansible_ssh_private_key_file=~/.ssh/terraform
EOT
}