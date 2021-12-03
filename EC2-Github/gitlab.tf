resource "gitlab_project" "meu-projeto-gitlab" {
  name        = "meu-projeto-via-terraform"
  description = "Meu projeto IAC"
  visibility_level = "public"
}

output "projeto_name" {
    value = gitlab_project.meu-projeto-gitlab.name
}