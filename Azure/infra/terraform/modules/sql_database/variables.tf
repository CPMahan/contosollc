variable "server_name" {
  description = "(Required) Name of sql server"
  type = string
}

variable "resource_group_name" {
  description = "(Required) Name of the resource group where the resources are located"
  type = string
}

variable "location" {
  description = "(Required) Location of the resources"
  type = string
}

variable "sql_server_version" {
  description = "(Required) The version of the new server"
  type = string
}

variable "administrator_login" {
  description = "(Required) The administrator login name for the new server"
  type = string
}

variable "administrator_login_password" {
  description = "(Required) The password associated with the administrator login user"
  type = string
}

variable "database_name" {
  description = "(Required) The name of the database"
  type = string
}

