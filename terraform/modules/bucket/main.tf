resource "google_storage_bucket" "my_bucket" {
  name          =  var.bucket_name
  location      =  var.location
  storage_class =  var.storage_class

  # Evita borrar datos por accidente
  force_destroy = var.force_destroy

  # Control de acceso uniforme
  uniform_bucket_level_access = var.uniform_bucket_level_access

  versioning {
    enabled = var.versioning
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.age
    }
  }
}
