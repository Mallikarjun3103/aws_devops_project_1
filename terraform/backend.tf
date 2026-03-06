terraform {

  backend "s3" {
    bucket         = "terraform-state-devops-project"
    key            = "infra/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }

}
