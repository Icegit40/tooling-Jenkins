terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "tooling/terraform.state"
    bucket         = "projectgroup-a-terraform-backend-bucket"
    region         = "us-east-2"
    dynamodb_table = "tterraform-state-locking"
  }
}
