terraform {
  backend "s3" {
    bucket = "mern-terraform-state-arshen00r"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
