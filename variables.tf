variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS deployment region"
}

variable "department" {
  type        = string
  default     = "It-department"
  description = "Department name applied as tags and group names"
}