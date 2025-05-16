terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "user" {
  name = var.user_name
  tags = {
    Environment = "Dev"
  }
}

resource "aws_iam_user_login_profile" "user_console" {
  user    = aws_iam_user.user.name
  pgp_key = file("my_pubkey.b64")
}


resource "aws_iam_access_key" "user_key" {
  user = aws_iam_user.user.name
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.user.name
  policy_arn = var.policy_arn
}
