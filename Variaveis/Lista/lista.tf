variable "times" {
    type = list(string)
    default = ["Corinthians", "Palmeiras", "Santos", "Sao Paulo"]
    description = "Times Paulistas" 
}

output "times_paulistas" {
    value = var.times
    description = "Times Paulistas da Serie A."
}

output "primeiro_time" {
    value = var.times[0]
    description = "Primeiro time da lista"
}