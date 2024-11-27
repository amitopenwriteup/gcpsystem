terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = file(env.GCP_CRED_ID)  # Use the environment variable injected by Jenkins
  project     = "pelagic-tracker-250700"  # Your GCP project ID
  region      = "asia-south1-c"           # Your desired region
}
