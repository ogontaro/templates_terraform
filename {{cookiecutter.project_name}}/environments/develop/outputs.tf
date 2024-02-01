locals {
  environment = {
    hoge = local.hoge
  }
}

output "environment" {
  value = local.environment
}
