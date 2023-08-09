variable "log_group" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "execution_role_policy" {
  default = ""
}

variable "log_retention_days" {
  default = 14
}

variable "enable_execute_command" {
  type    = bool
  default = false
}