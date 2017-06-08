// Configure the Google Cloud provider
provider "google" {
  project     = "causal-bindery-167912"
  region      = "europe-west1"
}

resource "google_container_cluster" "default" {
  name               = "amy-nicole"
  zone               = "europe-west1-d"
  initial_node_count = 1

  additional_zones = [
    "europe-west1-c"
  ]

  master_auth {
    username = "James"
    password = "Xavier"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

}