terraform {
    //Plugin that enables Terraform to communicate with AWS.
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
  alias  = "east"
  region = "us-east-1"
  AWS_ACCESS_KEY_ID = "AWS_ACCESS_KEY_ID"
  AWS_SECRET_ACCESS_KEY ="AWS_SECRET_ACCESS_KEY"

}

resource "aws_instance" "new_aws_instance"{
    ami = var.ami
    instance_type = var.instance_type
}