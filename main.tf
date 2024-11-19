resource "google_storage_bucket" "static" {
 name          = "terraformgcp"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

