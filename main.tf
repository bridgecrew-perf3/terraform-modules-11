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
  source = "./services/orders"
  bucket = var.bucket
  company = var.company
  environment = var.environment
  service_name = var.service_name
  service_version = var.service_version
}

module "contracts" {
  source = "./services/contracts"
  bucket = var.bucket
  company = var.company
  environment = var.environment
  service_name = var.service_name
  service_version = var.service_version
}
