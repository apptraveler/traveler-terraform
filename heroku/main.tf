terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "5.1.2"
    }
  }
}

provider "heroku" {
    email = var.heroku_account_email
    api_key = var.heroku_api_key
}

# resource "heroku_build" "dotnet_buildpack" {
#   app_id     = heroku_app.app_develop.id
#   buildpacks = ["https://github.com/jincod/dotnetcore-buildpack"]

#   source {
#     url     = "https://github.com/jincod/dotnetcore-buildpack/archive/refs/tags/v6.0.100.tar.gz"
#     version = "v2.1.1"
#   }
# }

resource "heroku_pipeline" "app_develop_pipeline" {
    name = var.heroku_pipeline_name
}

resource "heroku_app" "app_develop" {
    name = var.heroku_app_name
    region = var.heroku_region
    stack = "container"
    config_vars = {
        APP_ENV = var.heroku_app_environment
    }
}

resource "heroku_pipeline_coupling" "app_pipeline_coupling_develop" {
  app_id = heroku_app.app_develop.id
  pipeline = heroku_pipeline.app_develop_pipeline.id
  stage = var.heroku_app_environment
}

