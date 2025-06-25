output "aws_dynamodb_table_id" {
    description = "DynamoDB table name"
    value =   aws_dynamodb_table.terraform-backend-lock.id
}