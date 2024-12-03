terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
    #     azurerm = {
    #   source = "hashicorp/azurerm"
    #   version = "4.10.0"
    # }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# provider "azurerm" {
#   # Configuration options
# }