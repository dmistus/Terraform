output "ubuntu" {
    value = data.yandex_compute_image.ubuntu.id
}
output "web_instance_info" {
  value = {
    instance_name = yandex_compute_instance.platform.name
    external_ip   = yandex_compute_instance.platform.network_interface.0.nat_ip_address
    fqdn          = yandex_compute_instance.platform.fqdn
  }
}

output "db_instance_info" {
  value = {
    instance_name = yandex_compute_instance.vm-db.name
    external_ip   = yandex_compute_instance.vm-db.network_interface.0.nat_ip_address
    fqdn          = yandex_compute_instance.vm-db.fqdn
  }
}
