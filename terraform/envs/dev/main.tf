provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "network" {
  source         = "../../modules/network"
  environment    = "dev"
  project        = var.project
  region         = var.region
  zone           = var.zone
  network_name   = "default"
  policy_name    = "allow-prefect-ports"
  allow_protocol = "tcp"
  allow_ports    = ["22", "8080", "3000", "4200", "5432"]
  source_ranges  = ["0.0.0.0/0"]
  description    = "Allow SSH, HTTP app, and other custom ports"
}

module "pubsub" {
  source         = "../../modules/pubsub"
  principal_topic     = "main-topic"
  dlq_topic      = "dlq-topic"
  main_subscription = "main-subscription"
  url_endpoint   = "https://example.com/push-endpoint"
  max_delivery_attempts = 5
  min_backoff    = "10s"
  max_backoff    = "600s"

}