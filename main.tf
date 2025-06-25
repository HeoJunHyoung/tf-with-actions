resource "aws_vpc" "backend-vpc" {
  cidr_block       = "10.0.0.0/16"
	
  tags = {
    Name = "tf-backend-lock"
  }
}

module "s3" {
  source = "./modules/s3"
  bucket_name = "backend-bucket-h6bro"
}

module "backend" {
  source = "./modules/backend"
}

module "dynamodb" {
  source = "./modules/dynamodb"
  table_name = "terraform-lock"
}
