variable "allow_user_change" {
  description = "Do we allow people to change their own password?"
  type        = bool
  default     = true
}

variable "hard_expiry" {
  description = "Do we allow people to change passwords that have expired?"
  type        = bool
  default     = false
}

variable "maximum_age" {
  description = "The maximum age of a password (in days)"
  type        = number
  default     = 90
}

variable "minimum_length" {
  description = "The minimum length of a password"
  type        = number
  default     = 16
}

variable "require_lowercase" {
  description = "Do we require lowercase characters in the password"
  type        = bool
  default     = true
}

variable "require_numbers" {
  description = "Do we require numbers in the password"
  type        = bool
  default     = true
}

variable "require_symbols" {
  description = "Do we require symbols in the password"
  type        = bool
  default     = true
}

variable "require_uppercase" {
  description = "Do we require uppercase characters in the password"
  type        = bool
  default     = true
}

variable "reuse_history" {
  description = "The number of previous passwords that users are prevented from reusing."
  type        = number
  default     = 24
}
