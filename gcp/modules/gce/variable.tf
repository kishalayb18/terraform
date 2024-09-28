# VM instance parameters
variable "instance_name" {
  type = string
  description = "name of the vm instance"
}

variable "machine_type" {
  type    = string
  description = "vm machine type"
}

variable "zone" {
  type = string
  description = "select the zone of the vm"
}

variable "project_id" {
  description = "project id"
}

variable "subnetwork" {
  type = string
  description = "subnet of the vm"
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-11"
  description = "select the image"
}

variable "ssh_key" {
  type    = string
  default = ""
  description = "ssh key to connect remotely"
}

variable "tags" {
  type = list(string)
  default = ["allow-ssh"]
  description = "ssh flag"
}
