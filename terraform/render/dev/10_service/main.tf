resource "render_web_service" "front" {
  name           = "Docker-library-front"
  plan           = "starter"
  region         = "frankfurt"
  runtime_source = {
    image = {
      image_url = var.front_registry_url
      registry_credential_id = var.registry_credential_id
      tag = "latest"
    }
  }
}

resource "render_web_service" "back" {
  name           = "Docker-library-back"
  plan           = "starter"
  region         = "frankfurt"
  runtime_source = {
    image = {
      image_url = var.back_registry_url
      registry_credential_id = var.registry_credential_id
      tag = "latest"
    }
  }
}