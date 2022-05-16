resource "helm_release" "kyverno" {
  depends_on = [var.mod_dependency]
  count      = var.enabled ? 1 : 0
  name       = var.helm_chart_name
  chart      = var.helm_chart_release_name
  repository = var.helm_chart_repo
  version    = var.helm_chart_version
  namespace  = var.namespace

  set {
    name  = " " 
    value = " "
  }

  values = [
    yamlencode(var.settings)
  ]
}

resource "helm_release" "kyverno_ui" {
  depends_on = [helm_release.kyverno]
  count      = var.ui_enabled ? 1 : 0
  name       = var.helm_chart_name
  chart      = var.helm_chart_release_name
  repository = var.helm_chart_repo
  version    = var.helm_chart_version
  namespace  = var.namespace

  set {
    name  = "ui.enabled"
    value = true
  }

  values = [
    yamlencode(var.settings)
  ]
}

resource "helm_release" "kyverno_policy_reporter_slack" {
  depends_on = [helm_release.kyverno]
  count      = var.slack_enabled ? 1 : 0
  name       = var.helm_chart_name
  chart      = var.helm_chart_release_name
  repository = var.helm_chart_repo
  version    = var.helm_chart_version
  namespace  = var.namespace

  set {
    name  = "slack."
    value = var.ui_enabled
  }

  values = [
    yamlencode(var.settings)
  ]
}