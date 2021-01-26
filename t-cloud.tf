provider "aws" {
    region = "us-east-2"
    access_key = "AKIASD4ZRSAFVEYR65P6"
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
