resource "kubernetes_namespace" "kyverno_namespace" {
  depends_on = [var.mod_dependency]
  count      = (var.enabled && var.create_namespace) ? 1 : 0

  metadata {
    name = var.kyverno_namespace
  }
}

resource "kubernetes_namespace" "policy_reporter_namespace" {
  depends_on = [var.mod_dependency]
  count      = (var.ui_enabled && var.create_namespace) ? 1 : 0

  metadata {
    name = var.policy_reporter_namespace
  }
}