terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "web_server" {
  input = {
    name        = "Sreekanth-WebServer"
    environment = "production"
    owner       = "Sreekanth"
    monitoring  = "enabled"
  }
}

output "server_name" {
  value = terraform_data.web_server.output.name
}

output "environment" {
  value = terraform_data.web_server.output.environment
}
