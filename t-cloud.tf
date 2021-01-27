provider "aws" {
    region = "us-east-2"
    access_key = "AKIASD4ZRSAF3PIVEG7F"
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
