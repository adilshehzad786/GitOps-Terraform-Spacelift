terraform {
    //Plugin that enables Terraform to communicate with AWS.
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}


provider "aws" { 
   access_key = "{AWS_ACCESS_KEY_ID}" 
   secret_key = "{AWS_SECRET_ACCESS_KEY}"
   region = "us-east-1"
}

resource "aws_instance" "new_aws_instance"{
    ami = var.ami
    instance_type = var.instance_type
}