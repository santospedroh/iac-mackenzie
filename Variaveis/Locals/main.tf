locals {
    common_tags = {
        "CC" = "101010"
        "Team" = "EC"
        "Compliance" = "SOX"
    }
}
variable "ec2-name" {
    type = string 
    description = "Informe o nome da sua EC2"
}
variable "name_default" {
    type = string
    default = "iac-instance"
}
locals {
    name_prefix = "${var.ec2-name != "" ? var.ec2-name : var.name_default}"
}
output "resource_name" {
    value = local.name_prefix
}