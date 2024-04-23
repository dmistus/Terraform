resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

#Сети


resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_vpc_subnet" "develop_db" {
  name           = var.vpc_db_name
  zone           = var.vm_db_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_db_cidr
}



data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image
}
  resource "yandex_compute_instance" "platform" {
 #name = var.vm_web_instance
  name = local.vm_names["web"]
  zone = var.default_zone
  platform_id = "standard-v2"
  resources {
   # cores         = 2
   # memory        = 1
   # core_fraction = 5
    cores         = var.vms_resources.vm_web_resources.cores
    memory        = var.vms_resources.vm_web_resources.memory
    core_fraction = var.vms_resources.vm_web_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

 # metadata = {
 #   serial-port-enable = 1
 #   ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
 # }
 metadata = var.common_metadata

}

#dB
data "yandex_compute_image" "db" {
  family = var.vm_db_image
}
  resource "yandex_compute_instance" "vm-db" {
  #name = var.vm_db_instance
  name = local.vm_names["db"]
  platform_id = "standard-v2"
  resources {
  #  cores         = 2
  #  memory        = 2
  #  core_fraction = 20
    cores         = var.vms_resources.vm_db_resources.cores
    memory        = var.vms_resources.vm_db_resources.memory
    core_fraction = var.vms_resources.vm_db_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop_db.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }

}

