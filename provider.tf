
terraform {
  backend "s3" {
    bucket     = "ajmal-remote-tf-state"
    key        = "ajmal-workspace.tfstate"
    region     = "us-east-1"
    access_key = "AKIAZHOQ6ZUD3QDGQBXW"
    secret_key = "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"
    #dynamodb_table = "ajmal-terraform-dynamodb"
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZHOQ6ZUD3QDGQBXW"
  secret_key = "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"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
