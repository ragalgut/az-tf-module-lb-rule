resource "azurerm_lb_rule" "azlb" {

  backend_port                   = var.backend_port_lb_rule
  frontend_ip_configuration_name = var.frontend_name_lb_rule
  frontend_port                  = var.frontend_port_lb_rule
  loadbalancer_id                = var.loadbalancer_id
  name                           = var.name_lb_rule
  protocol                       = var.protocol_lb_rule
  backend_address_pool_ids       = var.backend_address_pool_ids
  disable_outbound_snat          = var.disable_outbound_snat
  enable_floating_ip             = var.lb_floating_ip_enabled
  idle_timeout_in_minutes        = var.idle_timeout_in_minutes
  probe_id                       = var.probe_id
}