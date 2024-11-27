terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = file("${var.GOOGLE_APPLICATION_CREDENTIALS}")  # Referencing the variable
  project     = "pelagic-tracker-250700"  # Your GCP project ID
  region      = "asia-south1-c"           # Your desired region
}
