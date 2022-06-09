//Ensure variables here can be used repeatedly within the EC2 environment
variable "ami" {
    type = string
    default = "ami-0022f774911c1d690"
}

variable "instance_type" {
    type = string 
    default = "t2.micro"
}