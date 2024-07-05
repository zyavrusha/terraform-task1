

provider "aws" {
  region  = "us-east-1"
}
# create ec2 instance for AWS 
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
