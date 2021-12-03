resource "github_repository" "meu-repo" {
    name        = "meu-repo-via-terraform"
    description = "Meu repo IAC"
    visibility = "public"
}

output "repo_fullname" {
    value = github_repository.meu-repo.full_name
}