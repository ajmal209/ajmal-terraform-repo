resource "aws_instance" "myname" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
}
