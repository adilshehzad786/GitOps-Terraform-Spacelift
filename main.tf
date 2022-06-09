terraform {
    //Plugin that enables Terraform to communicate with AWS.
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

resource "aws_instance" "new_aws_instance"{
    ami = var.ami
    instance_type = var.instance_type
}