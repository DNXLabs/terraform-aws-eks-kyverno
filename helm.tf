resource "helm_release" "kyverno" {
  depends_on = [var.mod_dependency]
  count      = var.enabled ? 1 : 0
  name       = var.kyverno_helm_chart_name
  chart      = var.kyverno_helm_chart_release_name
  repository = var.kyverno_helm_chart_repo
  # version    = var.kyverno_helm_chart_version
  namespace = var.kyverno_namespace

  values = [
    yamlencode(var.kyverno_settings)
  ]
}

resource "helm_release" "kyverno_ui" {
  depends_on = [helm_release.kyverno]
  count      = var.ui_enabled ? 1 : 0
  name       = var.policy_reporter_helm_chart_name
  chart      = var.policy_reporter_helm_chart_release_name
  repository = var.policy_reporter_helm_chart_repo
  # version    = var.policy_reporter_helm_chart_version
  namespace = var.policy_reporter_namespace

  set {
    name  = "ui.enabled"
    value = true
  }

  set {
    name  = "ui.plugins.kyverno"
    value = true
  }

  set {
    name  = "kyvernoPlugin.enabled"
    value = true
  }

  values = [
    yamlencode(var.policy_reporter_settings)
  ]
}