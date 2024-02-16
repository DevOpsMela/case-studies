resource "azurerm_kubernetes_cluster" "devops-aks" {
  name                = "devopscluster"
  location            = azurerm_resource_group.resource-gp.location
  resource_group_name = azurerm_resource_group.resource-gp.name
  dns_prefix          = "clusterdns"


  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}

