variable "bucket_name" {
  description = "The name of the Pub/Sub topic"
  type        = string 
}

variable "location" {
  description = "The location of the bucket"
  type        = string 
}

variable "storage_class" {
  description = "The storage class of the bucket"
  type        = string 
}

variable "force_destroy" {
  description = "The location of the bucket"
  type        = bool 
  default     = true 
}

variable "uniform_bucket_level_access" {
  description = "The location of the bucket"
  type        = bool 
  default     = true 
}

variable "versioning" {
  description = "The location of the bucket"
  type        = bool 
  default     = true 
}

variable "age" {
  description = "The location of the bucket"
  type        = string 
  default     = 5 
}
