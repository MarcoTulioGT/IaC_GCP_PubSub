variable "principal_topic" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}

variable "dlq_topic" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}

variable "main_subscription" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}

variable "url_endpoint" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}

variable "max_delivery_attempts" {
  description = "The number of max_delivery_attempts"
  type        = number
  default     = 1
}
variable "min_backoff" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}

variable "max_backoff" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}