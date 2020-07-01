provider "aws" {
   region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-cicd-state-file"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-cicd-state"
 }
}


provider "template" {
  #version = "~> 0.1"
}
