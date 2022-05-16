resource "kubernetes_namespace" "kyverno" {
  depends_on = [var.mod_dependency]
  count      = (var.enabled && var.create_namespace) ? 1 : 0

  metadata {
    name = var.namespace
  }
}