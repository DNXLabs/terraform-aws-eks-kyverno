variable "enabled" {
  type        = bool
  default     = false
  description = "Enable installation of core Kyverno"
}

variable "slack_enabled" {
  type        = bool
  default     = false
  description = "Enables Slack integration"
}

variable "ui_enabled" {
  type        = bool
  default     = false
  description = "Enables the Policy Reporter UI"
}

variable "kyverno_helm_chart_name" {
  type        = string
  default     = "kyverno"
  description = "Kyverno Helm chart name to be installed"
}

variable "policy_reporter_helm_chart_name" {
  type        = string
  default     = "policy-reporter"
  description = "Policy Reporter Helm chart name to be installed"
}


variable "kyverno_helm_chart_release_name" {
  type        = string
  default     = "kyverno"
  description = "Kyverno Helm chart release name to be installed"
}

variable "policy_reporter_helm_chart_release_name" {
  type        = string
  default     = "policy-reporter"
  description = "Policy Reporter Helm chart release name to be installed"
}

variable "kyverno_helm_chart_repo" {
  type        = string
  default     = "https://kyverno.github.io/kyverno"
  description = "Kyverno repository name."
}

variable "policy_reporter_helm_chart_repo" {
  type        = string
  default     = "https://kyverno.github.io/policy-reporter"
  description = "Policy Reporter repository name."
}

variable "kyverno_helm_chart_version" {
  type        = string
  description = "Kyverno Helm chart version"
}

variable "policy_reporter_helm_chart_version" {
  type        = string
  default     = "2.8.0"
  description = "Policy Reporter Helm chart version"
}

variable "mod_dependency" {
  type        = any
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "kyverno_namespace" {

  type        = string
  default     = "kyverno"
  description = "Namespace for kyverno helm chart"
}

variable "policy_reporter_namespace" {

  type        = string
  default     = "policy-reporter"
  description = "Namespace for Policy Reporter helm chart"
}

variable "kyverno_settings" {
  type        = any
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://kyverno.io/docs/installation/#install-kyverno-using-helm."
}

variable "policy_reporter_settings" {
  type        = any
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://kyverno.io/docs/installation/#install-kyverno-using-helm."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "kyverno_extraargs" {
  type        = any
  default     = {}
  description = "Secrets to allow accessing private repositories "

}