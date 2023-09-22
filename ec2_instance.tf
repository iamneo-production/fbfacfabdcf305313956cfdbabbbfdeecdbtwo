terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIAT4NKNOKFSXTBHCHY"
    secret_key = "DbO9DTlZ8t3SJ2NLakRaNfHbvZWIpXlehnVXwwPX"

}

resource "aws_instance" "example" {
    ami = "ami-072f48a9ed4f1bbda"
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.example
}