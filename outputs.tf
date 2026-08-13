output "iam_group_name" {
  value       = aws_iam_group.it_dept.name
  description = "Name of the IAM group created"
}

output "john_user_name" {
  value       = module.john_user.username
  description = "IAM Username for John Smith"
}

output "john_user_arn" {
  value       = module.john_user.user_arn
  description = "ARN for John Smith"
}

output "kate_user_name" {
  value       = module.kate_user.username
  description = "IAM Username for Kate Johnson"
}

output "kate_user_arn" {
  value       = module.kate_user.user_arn
  description = "ARN for Kate Johnson"
}