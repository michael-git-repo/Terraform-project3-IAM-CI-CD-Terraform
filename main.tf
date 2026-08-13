# 1. Create the IAM Group for the IT Department
resource "aws_iam_group" "it_dept" {
  name = "IT-department"
}

# 2. Attach AdministratorAccess policy to the IT Department Group
resource "aws_iam_group_policy_attachment" "it_dept_admin" {
  group      = aws_iam_group.it_dept.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# 3. User 1: John (Full Name: John Smith)
module "john_user" {
  source     = "./modules/iam-user"
  username   = "john.smith"              # IAM Username
  full_name  = "John Smith"              # Tagging Name
  department = var.department
  group_name = aws_iam_group.it_dept.name
}

# 4. User 2: Kate (Full Name: Kate Johnson)
module "kate_user" {
  source     = "./modules/iam-user"
  username   = "kate.johnson"            # IAM Username
  full_name  = "Kate Johnson"            # Tagging Name
  department = var.department
  group_name = aws_iam_group.it_dept.name
}

# 5. user 3: Michael (Full Name: Michael Brown)
module "michael_user" {
  source     = "./modules/iam-user"
  username   = "michael.brown"           # IAM Username
  full_name  = "Michael Brown"           # Tagging Name
  department = var.department
  group_name = aws_iam_group.it_dept.name
}

# 6. user 4: Sarah (Full Name: Sarah Davis)
module "sarah_user" {
  source     = "./modules/iam-user"
  username   = "sarah.davis"             # IAM Username
  full_name  = "Sarah Davis"             # Tagging Name
  department = var.department
  group_name = aws_iam_group.it_dept.name
}