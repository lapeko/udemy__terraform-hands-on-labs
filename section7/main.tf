resource "random_string" "blabla" {
  length  = 16
#   upper   = true
#   lower   = true
#   number  = true
#   special = true

#   keepers = {
#     id = value
#   }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0a72753edf3e631b7"
  instance_type = "t2.micro"
  tags = {
    random = random_string.blabla.result
  }
}
