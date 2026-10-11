data "aws_appmesh_gateway_route" "appmesh_gateway_route_lookup" {
  for_each = var.appmesh_gateway_route_lookup

  mesh_name            = each.value.mesh_name
  name                 = each.value.name
  virtual_gateway_name = each.value.virtual_gateway_name
  mesh_owner           = each.value.mesh_owner
  region               = each.value.region
  tags                 = each.value.tags
}

