terraform {
  backend "s3" {
    bucket = "terraform-project-2023-bucket"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
