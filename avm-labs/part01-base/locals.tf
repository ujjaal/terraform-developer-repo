# Define resource names
locals {

  # Define environment variable
  environment = var.environment

  # Use environment variable and unique ID for resource names
  resource_group_name          = format("rg-monitoring-%s", local.environment)
  log_analytics_workspace_name = format("law-%s", local.environment)
}
