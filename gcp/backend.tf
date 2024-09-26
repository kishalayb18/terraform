terraform {
  backend "gcs" {
    credentials = "key.json"
    bucket      = "terraform-default-bucket"
    prefix      = "terraform/state"
  }
}
