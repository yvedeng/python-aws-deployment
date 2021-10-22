# This file contains the Terraform provider and AWS module version constraints
# or requirements.
# Other provider information can be passed here.
# The AWS Region is specified here for the purpose of this article.


# This configuration file will contain the provider configurations and tested versions.
# Specify the Terraform provider version.
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}