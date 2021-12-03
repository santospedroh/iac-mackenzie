variable "instance_shape_per_region" {
    type = map(string)
    default = {
        "sa-east": "t2.micro",
        "us-east": "t3.micro",
        "us-weast": "t3.medium"
    }
    description = "Tipos de EC2 por regiao"
}

output "ec2_per_region" {
    value = var.instance_shape_per_region
}

output "ec2-sa-east" {
    value = var.instance_shape_per_region["sa-east"]
}