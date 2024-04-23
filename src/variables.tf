###cloud vars
variable "token" {
  type        = string
  default = "y0_AgAAAAAPbFfjoA0xFoxKBalJpWfOTMSX2J__6g"
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  default = "b1gu9qfogo41rud4orsq"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

#variable "folder_id" {
#  type        = string
#  default = "b1g4jbdk3j8kjquvo90o"
#  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
#}

#variable "default_zone" {
#  type        = string
#  default     = "ru-central1-a"
#  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
#}

#variable "default_cidr" {
#  type        = list(string)
#  default     = ["10.0.1.0/24"]
#  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
#}

#variable "vpc_name" {
#  type        = string
#  default     = "develop"
#  description = "VPC network & subnet name"
#}


###ssh vars

#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-rsa AAbG0BPm6BbhvltbOEaVTAk+WEAb8v3fNLyJzEzl5qMMmD9rhQVA2AFEMJiUfVts8NLAqB9JR6q+VfOB1IlDidbWBZjOUsvoyUv7VZCCdt0pIfr1c+zdt0oyldyMN5maZsoLa+7VeusCNdcSGutWnakYkiijJ4/GduHPJGhOaxRclnLwkbHFxsApnm7vXitXDro1ln/wfNTvC6X3RxVvlo5Y1kBu/0HH/pD4yVOfDctvtZpp6PU3zEYP7VW8ppxjU1THZqW0Fc1QglcqR9y3GJ1bE3/VpIL5ecsTGhhudLTS05Hz/tvzSnAfXFZNiX5/bQpKI6VRSxHdvsXO9OTFh4i/fwNHlGDPs9rn3JIslOOlCRheq9V8peNnhOz0ZGzv/EMU3H64Fjs45U6V7UzT3tPRnUPgfVE= root@ruvds-6tbci"
#  description = "ssh-keygen -t ed25519"
#}

#variable "vm_web_image" {
#  type        = string
#  default     = "ubuntu-2004-lts"
#  description = "my image"
#}

#variable "vm_web_instance" {
#  type        = string
#  default     = "netology-develop-platform-web"
#  description = "my instance"
#}
