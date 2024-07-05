
# create  simple ec2 instance for AWS 
resource "aws_instance" "app_server" {
  ami           = "ami-00402f0bdf4996822"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
