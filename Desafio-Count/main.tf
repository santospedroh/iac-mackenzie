variable "ambiente" {
    type = string
    #default = "dev"
    description = "Informe o ambiente onde as instancias seram provisionada - dev ou prod ?"
}

resource "aws_instance" "dev" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t2.micro"
    # CONDICAO ? VALOR SE VERDADEIRO : VALOR DE FALSO
    count = var.ambiente == "dev" ? 2 : 0

    tags = {
        Name = "DEV_INSTANCE"
    }
}

resource "aws_instance" "prod" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t3.medium"
    # CONDICAO ? VALOR SE VERDADEIRO : VALOR DE FALSO
    count = var.ambiente == "prod" ? 4 : 0

    tags = {
        Name = "PROD_INSTANCE"
    }
}