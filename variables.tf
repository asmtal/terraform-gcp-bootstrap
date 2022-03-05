variable "project" {
  type        = string
  description = "The default project to manage resources in."
}

variable "region" {
  type        = string
  description = "The default region to manage resources in."
  default     = "us-east1"
}

variable "zone" {
  type        = string
  description = "The default zone to manage resources in."
  default     = "us-east1-b"
}

variable "apis_services" {
  type        = list(string)
  description = "List of APIs & Services to enable."
  default = [
    "compute.googleapis.com"
  ]
}
