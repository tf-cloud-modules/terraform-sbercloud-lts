variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the log group resource."
  type        = string
  default     = null
}

variable "group_name" {
  description = "Specifies the log group name."
  type        = string
}

variable "ttl_in_days" {
  description = "Specifies the log expiration time(days)."
  type        = number
}