resource "azurerm_sql_server" "sql_server" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_sql_database" "sql_database" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.server_name

  depends_on = [
    azurerm_sql_server.sql_server
  ]
}