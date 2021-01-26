provider "aws" {
    region = "us-east-2"
    access_key = "AKIASD4ZRSAFTHCLTN6E"
    secret_key = "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"
  
}

locals {
    setup_name = "tuts" 
  
}

resource "aws_instance" "foobar" {
    ami = "ami-03d64741867e7bb94"
    instance_type = "t2.micro"
    tags = {
        Name = "${local.setup_name}.new" 

    }
  
}
