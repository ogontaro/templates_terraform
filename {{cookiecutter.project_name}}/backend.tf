terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ogontaro"

    workspaces {
      prefix = "{{cookiecutter.project_name}}_"
    }
  }
}
