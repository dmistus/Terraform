##var web
variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "my image"
}

variable "vm_web_instance" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "my instance"
}



#variable "cloud_id" {
#  type        = string
#  default = "b1gu9qfogo41rud4orsq"
#  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
#}

variable "folder_id" {
  type        = string
  default = "b1g4jbdk3j8kjquvo90o"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAMmD9rhQVA2AFEMJiUfVts8NLAqB9JR6q+VfOB1IlDidbWBZjOUsvoyUv7VZCCdt0pIfr1c+zdt0oyldyMN5maZsoLa+7VeusCNdcSGutWnakYkiijJ4/GduHPJGhOaxRclnLwkbHFxsApnm7vXitXDro1ln/wfNTvC6X3RxVvlo5Y1kBu/0HH/pD4yVOfDctvtZpp6PU3zEYP7VW8ppxjU1THZqW0Fc1QglcqR9y3GJ1bE3/VpIL5ecsTGhhudLTS05Hz/tvzSnAfXFZNiX5/bQpKI6VRSxHdvsXO9OTFh4i/fwNHlGDPs9rn3JIslOOlCRheq9V8peNnhOz0ZGzv/EMU3H64Fjs45U6V7UzT3tPRnUPgfVE= root@ruvds-6tbci"
  description = "ssh-keygen -t ed25519"
}

## vars db VM
variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "my image"
}
variable "vpc_db_name" {
  type        = string
  default     = "default"
  description = "VPC network & subnet name"
}

variable "default_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}




variable "vm_db_instance" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "my instance"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vms_db_ssh_root_key" {
  type        = string
  default     = "<your_ssh_ed25519_key>"
  description = "ssh-keygen -t ed25519"
}

# Ресурсы
variable "vms_resources" {
  description = "Resources for all vms"
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "common_metadata" {
  description = "metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys          = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIjKG3j7XxY3d7HWOm+GapAny................."
  }
}
