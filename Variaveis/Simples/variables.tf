# variable "nome_da_variavel" {
#   options ....
# }

variable "pais" {
    type = string
    default = "Bolivia"
    description = "Informe o seu pais"
}
variable "idade" {
    type = number
    default = 31
    description = "Informe sua idade"
}

variable "check" {
    type = bool
    default = true
    description = "Informe se tera checagem ou nao"
}

output "seu_pais" {
    value = var.pais
}

output "sua_idade" {
    value = var.idade
}

output "seu_check" {
    value = var.check
}