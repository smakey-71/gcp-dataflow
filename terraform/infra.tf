terraform {
  backend "gcs" {
    bucket = "tf-smakey-gcp-dataflow"
    region = "australia-southeast1-a"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "contino-876544dfba04b962"
  region = "australia-southeast1-a"
}

resource "google_storage_bucket" "smakey-batch" {
  name = "batch-pipeline"
  storage_class = "REGIONAL"
  location  = "australia-southeast1"
}
