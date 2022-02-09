terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Ramboll-CHN"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
