resource "aws_instance" "myname" {
  ami = "ami-0360c520857e3138f"
  #instance_type = var.user-input
  instance_type = var.user-input == "dev" ? "t2.micro" : "t2.nano" # for dev t2.micro instance will be created.
}

variable "user-input" {
  description = "Enter your working Environment dev/prod"
}
