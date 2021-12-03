variable "is_test" {
    type = bool
    description = "O ambiente a ser provisionado e' teste ?"
    #default = true
}

resource "aws_instance" "dev" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t2.micro"
    # CONDICAO ? VALOR SE VERDADEIRO : VALOR DE FALSO
    count = var.is_test == true ? 1 : 0

    tags = {
        Name = "DEV_INSTANCE"
    }
}

resource "aws_instance" "prod" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t3.medium"
    # CONDICAO ? VALOR SE VERDADEIRO : VALOR DE FALSO
    count = var.is_test == false ? 1 : 0

    tags = {
        Name = "PROD_INSTANCE"
    }
}