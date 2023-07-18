terraform {
  backend "s3" {
    bucket = "genai-terraform-backend"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}
