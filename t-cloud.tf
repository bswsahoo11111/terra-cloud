provider "aws" {
    region = "us-east-2"
    access_key = "AKIAIZUIFNEJQ6P5FY2A"
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
