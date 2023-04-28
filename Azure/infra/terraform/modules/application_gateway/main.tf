resource "azurerm_public_ip" "example" {
  name                = "agw-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_application_gateway" "agw" {
  name                = "appgateway"
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "gateway-ip-config"
    subnet_id = var.gateway_subnet_id
  }

  frontend_port {
    name = "frontend-port"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "frontend-ip-config"
    public_ip_address_id = azurerm_public_ip.example.id
  }

  backend_address_pool {
    name = "backend-pool"
    fqdns = ["dev-eus-h2o-app.azurewebsites.net"]
  }

  backend_http_settings {
    name                  = "backend-settings"
    cookie_based_affinity = "Disabled"
    path                  = "/path1/"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           = "listener"
    frontend_ip_configuration_name = "frontend-ip-config"
    frontend_port_name             = "frontend-port"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "routing-rule"
    rule_type                  = "Basic"
    http_listener_name         = "listener"
    backend_address_pool_name  = "backend-pool"
    backend_http_settings_name = "backend-settings"
    priority = 100
  }

#   waf_configuration {
#     enabled = true
#     firewall_mode = "Detection"
#     rule_set_version = 3.1
#   }

  probe {
    name = "health-probe"
    host = "dev-eus-h2o-app.azurewebsites.net"
    interval = 5
    protocol = "Http"
    path = "/"
    timeout = 60
    unhealthy_threshold = 15
    port = 80
  }
}
