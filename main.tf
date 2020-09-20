provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "flex" {
    ami                          = "ami-0c94855ba95c71c99"
    associate_public_ip_address  = true
    availability_zone            = "us-east-1e"
    instance_type                = "t2.nano"
    key_name                     = "bees-tito-profile"
    subnet_id                    = "subnet-f50f9bc8"
    tags                         = {
        "Name" = "New infrastructure"
        "App"  = "flex-new"
        "Env"  = " productionn"
    }
}
