variable "heroku_account_email" {
  type = string
  description = "Heroku email"
  default = "gabrielgdc15@gmail.com"
}

variable "heroku_api_key" {
  type = string
  description = "Heroku api key"
  default = "182058bb-4fe8-4331-815c-964602b3e291"
}

variable "heroku_pipeline_name" {
  type = string
  description = "value"
  default = "traveler"
}

variable "heroku_app_name" {
  type = string
  description = "value"
  default = "traveler-identity-develop"
}

variable "heroku_region" {
  type = string
  description = "value"
  default = "us"
}

variable "heroku_app_environment" {
  type = string
  description = "Environment to construct the infrastructure"
  default = "development"
}