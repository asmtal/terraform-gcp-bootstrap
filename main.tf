terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.12.0"
    }
  }
}

# Set provider defaults
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

# Enable APIs & Services
resource "google_project_service" "apis_services" {
  for_each = toset(var.apis_services)
  service  = each.value
}
