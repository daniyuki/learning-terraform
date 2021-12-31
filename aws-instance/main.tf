terraform {
  cloud {
    organization = "learn-terraform-2021"
    workspaces {
      name = "Example-Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "app-server" {
#  ami           = "ami-05d34d340fb1d89e5"
  ami           = "ami-099ccc441b2ef41ec"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}
