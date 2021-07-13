terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      version = "~> 3.49"
    }
    buildkite = {
      source  = "buildkite/buildkite"
      version = "~> 0.5"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.12"
    }
  }

  backend "s3" {
    region = "us-east-1"
    bucket = "ops.production.kitesocial.net"
    key    = "terraform/terraform.tfstate"
  }
}

