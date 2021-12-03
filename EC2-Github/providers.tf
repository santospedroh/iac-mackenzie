terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.65.0"
    }
    github = {
      source = "integrations/github"
      version = "4.18.0"
    }
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.8.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "github" {
  token = "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"
}

provider "gitlab" {
    token = "glpat-Y6YQ-Yi83nx56uR9d9sy"
}