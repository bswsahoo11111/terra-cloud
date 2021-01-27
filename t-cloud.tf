provider "aws" {
    region = "us-east-2"
    access_key = "AKIASD4ZRSAF2O5FEHXL"
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
