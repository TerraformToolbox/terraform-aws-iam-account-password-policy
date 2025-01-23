resource "aws_iam_account_password_policy" "iam_account_password_policy" {
  allow_users_to_change_password = var.allow_user_change
  hard_expiry                    = var.hard_expiry
  max_password_age               = var.maximum_age
  minimum_password_length        = var.minimum_length
  password_reuse_prevention      = var.reuse_history
  require_lowercase_characters   = var.require_lowercase
  require_numbers                = var.require_numbers
  require_symbols                = var.require_symbols
  require_uppercase_characters   = var.require_uppercase
}

