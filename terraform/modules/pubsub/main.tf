# Topic principal
resource "google_pubsub_topic" "main_topic" {
  name = var.principal_topic
}

# Dead Letter Topic
resource "google_pubsub_topic" "dlq_topic" {
  name = var.dlq_topic
}

# Suscripción con DLQ
resource "google_pubsub_subscription" "main_subscription" {
  name  = var.main_subscription
  topic = google_pubsub_topic.main_topic.id

  ack_deadline_seconds = 20

  push_config {
    push_endpoint = var.url_endpoint
  }

  # Dead Letter Queue
  dead_letter_policy {
    dead_letter_topic     = google_pubsub_topic.dlq_topic.id
    max_delivery_attempts = var.max_delivery_attempts
  }

  retry_policy {
    minimum_backoff = var.min_backoff
    maximum_backoff = var.max_backoff
  }
}
