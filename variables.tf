variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "vprofile"
}

variable "db_name" {
  description = "MySQL database name"
  type        = string
  default     = "accounts"
}

variable "db_username" {
  description = "RDS master username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

variable "image_uri" {
  description = "Docker image URI received from application pipeline"
  type        = string
  default     = ""
}