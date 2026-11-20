terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "web_server" {
  input = {
    name        = "Sreekanth-WebServer"
    environment = "development"
  }
}

output "server_name" {
  value = terraform_data.web_server.output.name
}
