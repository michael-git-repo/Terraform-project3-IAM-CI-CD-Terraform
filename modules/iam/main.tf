# Create IAM User
resource "aws_iam_user" "this" {
  name = var.username

  tags = {
    Name       = var.full_name
    Department = var.department
    ManagedBy  = "Terraform"
  }
}

# Add User to the IAM Group
resource "aws_iam_user_group_membership" "this" {
  user   = aws_iam_user.this.name
  groups = [var.group_name]
}