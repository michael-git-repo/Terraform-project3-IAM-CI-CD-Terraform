# Terraform-project3-IAM-CI-CD-Terraform
# AWS IAM Management with Terraform & GitHub Actions CI/CD

This repository automates the provisioning and lifecycle management of AWS Identity and Access Management (IAM) users, groups, and policy attachments using **Terraform** and **GitHub Actions**.

---

📌 Features

* **Reusable IAM User Module**: Standardises user creation with tags, group memberships, and consistent configurations.
* **Automated CI/CD Pipeline**: Validates, formats, plans, and applies infrastructure changes automatically on pull requests or pushes to `main`.
* **Least Privilege Access**: Provisions structured IAM groups (e.g., `IT-department`) with attached managed policies.

---

📁 Repository Structure
├── .github/
│   └── workflows/
│       └── terraform-iam.yml   # GitHub Actions CI/CD pipeline definition
├── modules/
│   └── iam-user/               # Reusable module for IAM user creation
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── main.tf                     # Main root configuration (calls modules & resources)
├── outputs.tf                  # Root outputs for user ARNs and group names
├── provider.tf                 # AWS Provider configuration
├── variables.tf                # Input variables
└── README.md


