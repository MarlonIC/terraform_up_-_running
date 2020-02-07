provider "aws" {
  version = "~> 2.47"
  region = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile = "terraform"
}

resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-065ce9d622c7e3e74"
  instance_type = "t2.micro"
}

