terraform {
  required_version = ">=1.3.2"
  required_providers {
    aws   = ">=4.36.1"
    local = ">=2.2.3"
  }
}

provider "aws" {
  region = "us-east-1"
}
