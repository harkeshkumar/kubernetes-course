provider "aws" {
  region                  = "ap-south-1"
  profile                 = "mine"
}

terraform {
  backend "s3" {
    bucket = "assignment-test"
    key    = "kubernetes-course/kubernetes.tfstate"
    region = "ap-south-1"
    profile                 = "mine"
    dynamodb_table = "kubernetes-lock"
  }
}