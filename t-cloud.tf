provider "aws" {
    region = "us-east-2"
    access_key = "AKIASD4ZRSAFVEYR65P6"
    secret_key = "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"
  
}

data "aws_vpc" "name" {
  
}
resource "aws_instance" "web" {
    provider = aws.east
    ami = "ami-096fda3c22c1c990a"
    instance_type = "t2.micro"


}
 
resource "aws_instance" "test" {
    for_each = {
        prod = "t2.micro"
        dev = "t2.micro"
    }
    
    ami = "ami-03d64741867e7bb94"
    instance_type = each.value
    tags = {
      "Name" = "dev ${each.key}"


    }
  
}

output "foo" {
    value = aws_instance.test["prod"].public_ip
  
}

