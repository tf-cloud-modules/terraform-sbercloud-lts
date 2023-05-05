variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the log stream resource."
  type        = string
  default     = null
}

variable "group_id" {
  description = "Specifies the ID of a created log group."
  type        = string
}

variable "stream_name" {
  description = "Specifies the log stream name."
  type        = string
}