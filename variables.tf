variable "user_name" {
  description = "The IAM user name to create"
  type        = string
}

variable "policy_arn" {
  description = "The ARN of the IAM policy to attach"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
