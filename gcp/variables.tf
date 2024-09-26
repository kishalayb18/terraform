variable "project_id" {
  description = "gcp project id"
}

variable "subnet_names" {
  type = list(string)
}

variable "subnet_cidr_ranges" {
  type = list(string)
}

variable "subnet_regions" {
  type = list(string)
}