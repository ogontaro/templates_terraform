module "conf_develop" {
  source = "./environments/develop"
}
module "conf_production" {
  source = "./environments/production"
}

locals {
  environments = {
    sandbox    = module.conf_develop.environment,
    production = module.conf_production.environment,
  }
}

locals {
  environment = local.environments[var.env]
}
