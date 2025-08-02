locals {
  rand_str = random_string.blabla.result
}

resource "random_string" "blabla" {
  length = 16
  #   upper   = true
  #   lower   = true
  #   number  = true
  #   special = true

  #   keepers = {
  #     id = value
  #   }
}

resource "aws_instance" "example" {
  ami           = "ami-0a72753edf3e631b7"
  instance_type = "t2.micro"
  tags = {
    random    = local.rand_str
    userinput = var.tagname
  }
}
