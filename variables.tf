variable "name" {
  type        = string
  description = "name of secret"
  default     = "name"
}

variable "description" {
  type        = string
  description = "description"
  default     = "description"
}
variable "secret_pass" {
  type        = string
  description = "password"
  default     = ""
}

variable "user_secret" {
  type        = string
  description = "username"
  default     = ""
}