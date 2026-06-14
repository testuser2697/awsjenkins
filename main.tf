provider "aws" {
  region = "us-west-2"
}
terraform {
  backend "s3" {
    bucket         = "jenkins-state-michael-234"   
    key            = "terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
resource "aws_s3_bucket" "example" {
bucket = "jenkins-test-bucket-mcg-12345"
acl    = "private"
}
