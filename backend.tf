terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
    }
  }
    cloud {
        organization = "Montreal-College"
      workspaces {
        name = "aws_IAM"
      }
    }

}
