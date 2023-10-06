terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region         = "eu-central-1"
    bucket         = "htc-demo-00-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "htc-demo-00-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}
