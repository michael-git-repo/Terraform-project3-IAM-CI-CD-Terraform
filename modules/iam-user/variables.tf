variable "username" {
  type        = string
  description = "The IAM username (e.g., john.smith)"
}

variable "full_name" {
  type        = string
  description = "Full name of the user for tags"
}

variable "department" {
  type        = string
  default     = "It-department"
  description = "Department tag"
}

variable "group_name" {
  type        = string
  description = "The IAM group to add this user to"
}