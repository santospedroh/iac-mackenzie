variable "usuarios" {
  type = map(object({
    email        = string
    departamento = string
  }))
  default = {
      "Vinicius": {
          email = "vinicius@localhost.com"
          departamento = "Operacoes de TI"
      }
      "Joaozinho": {
          email = "joaozinho@localhost.com"
          departamento = "RH"
      }
  }
  description = "Usuarios do Terraform"
}

output "Usuarios" {
    value = var.usuarios
    description = "Todos os Usuarios"
}
