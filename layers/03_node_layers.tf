module "node_layers" {
  source           = "./modules/node_layer"
  for_each         = var.node_layers
  layer_name       = each.key
  artifact_version = each.value
}
