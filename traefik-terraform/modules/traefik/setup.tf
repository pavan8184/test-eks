resource "helm_release" "traefik" {
  name             = "traefik"
  repository       = "https://helm.traefik.io/traefik"
  chart            = "traefik"
  namespace        = "traefik"
  create_namespace = true
  version          = "23.0.1"
  
  set {
    name  = "dashboard.enabled"
    value = "true"
  }
}
