output "iam_user_name" {
  value = aws_iam_user.user.name
}

output "access_key_id" {
  value     = aws_iam_access_key.user_key.id
  sensitive = true
}

output "secret_access_key" {
  value     = aws_iam_access_key.user_key.secret
  sensitive = true
}

output "encrypted_password" {
  value     = aws_iam_user_login_profile.user_console.encrypted_password
  sensitive = true
}