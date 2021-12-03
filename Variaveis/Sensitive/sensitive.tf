variable "senha" {
    type = string
    sensitive = true
    description = "Informe sua senha"
}

output "senha" {
    value = var.senha
    sensitive = true
}
