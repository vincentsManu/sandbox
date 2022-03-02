provider "azurerm" {
  features {}

  subscription_id = var.subscriptionId
  tenant_id       = var.tenantId
}

resource "azurerm_resource_group" "default" {
  name     = "${var.appName}-rg"
  location = "Southeast Asia"

  tags = {
    environment = "manupulse"
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "${var.appName}-aks"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "${var.appName}-k8s"

  default_node_pool {
    name       = "default"
    node_count = 4
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    azure_policy {
      enabled = true
    }
  }

  tags = {
    environment = "PoC"
  }
}

# resource "azurerm_container_registry" "acr" {
#   name                = "registry4${var.appName}"
#   location            = azurerm_resource_group.default.location
#   resource_group_name = azurerm_resource_group.default.name
#   sku                 = "Standard"

#   identity {
#     type = "SystemAssigned"
#   }
# }
