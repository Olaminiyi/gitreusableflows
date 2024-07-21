terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "Olami"

		workspaces {
			name = "microservices_project"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}