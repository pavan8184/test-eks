provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  # Update with the path to your kubeconfig file
  }
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
    region   = "${var.aws_region}"
}
 
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "= 2.5.1"
    }
  }
}
