terraform {
  backend "s3" {
    bucket = "tf-noha"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "table1"
  }
}