module "network" {
  source = "./network"
  company = var.company
  environment = var.environment
}

module "storage" {
  source = "./storage"
  company = var.company
  environment = var.environment
}

module "orders" {
  source = "./application"
  bucket = var.bucket
  company = var.company
  environment = var.environment
  service_name = "orders"
  service_version = var.orders_version
}

module "contracts" {
  source = "./application"
  bucket = var.bucket
  company = var.company
  environment = var.environment
  service_name = "contracts"
  service_version = var.contracts_version
}
