terraform {
  required_version = ">= 0.13"

  required_providers {
    aws        = ">= 3.13"
    helm       = ">= 2.5.1"
    kubernetes = ">= 1.10.0, < 3.0.0"
  }
}