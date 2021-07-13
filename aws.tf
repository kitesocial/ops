provider "aws" {
  region = "us-east-1"
}

data "aws_region" "primary" {
}

data "aws_availability_zones" "primary" {
}
