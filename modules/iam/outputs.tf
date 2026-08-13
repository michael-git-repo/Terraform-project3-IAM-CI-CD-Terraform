output "user_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM user"
  value       = aws_iam_user.this.arn
}

output "username" {
  description = "The IAM user's name"
  value       = aws_iam_user.this.name
}

output "user_unique_id" {
  description = "The unique ID assigned by AWS for this IAM user"
  value       = aws_iam_user.this.unique_id
}