terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = file(var.GCP_CRED_FILE)  # Use the path defined in the environment or variable
  project     = "pelagic-tracker-250700"  # Your GCP project ID
  region      = "asia-south1-c"           # Your desired region
}

variable "GCP_CRED_FILE" {
  description = "Path to the GCP credentials JSON file"
  type        = string
}
