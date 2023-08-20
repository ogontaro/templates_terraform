module "conf_sandbox" {
  source = "./environments/sandbox"
}
module "conf_production" {
  source = "./environments/production"
}

locals {
  environments = {
    sandbox    = module.conf_sandbox.environment,
    production = module.conf_production.environment,
  }
}

locals {
  environment = local.environments[var.env]
}
