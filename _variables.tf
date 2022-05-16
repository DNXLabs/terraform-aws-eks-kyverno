variable "enabled" {
    type    = bool
    default = false
    description = " "
}

variable "slack_enabled" {
    type    = bool
    default = false
    description = " "
}

variable "ui_enabled" {
    type    = bool
    default = false
    description = " "
}

variable "kyverno_helm_chart_name" {
  type        = string
  default     = " "
  description = " "
}

variable "policy_reporter_helm_chart_name" {
  type        = string
  default     = " "
  description = " "
}


variable "kyverno_helm_chart_release_name" {
  type        = string
  default     = " "
  description = " "
}

variable "policy_reporter_helm_chart_release_name" {
  type        = string
  default     = " "
  description = " "
}

variable "kyverno_helm_chart_repo" {
  type        = string
  default     = " "
  description = " "
}

variable "policy_reporter_helm_chart_repo" {
  type        = string
  default     = " "
  description = " "
}

variable "kyverno_helm_chart_version" {
  type        = string
  default     = " "
  description = " "
}

variable "policy_reporter_helm_chart_version" {
  type        = string
  default     = " "
  description = " "
}

variable "mod_dependency" {
  type        = any
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}