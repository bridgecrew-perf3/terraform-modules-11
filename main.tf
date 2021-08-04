module "network" {
  source = "./network"
}

module "storage" {
  source = "./storage"
}

module "orders" {
  source = "./services/orders"
}

module "contracts" {
  source = "./services/contracts"
}
