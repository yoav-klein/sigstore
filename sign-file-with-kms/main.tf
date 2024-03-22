terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.50"
        }
    }
}

provider "aws" {}


resource "aws_kms_key" "example" {
  customer_master_key_spec = "RSA_4096"
  key_usage = "SIGN_VERIFY"
  description             = "Example KMS Key"
  deletion_window_in_days = 10
  tags = {
    Name = "ExampleKMSKey"
  }
}

output "key_arn" {
  value = aws_kms_key.example.arn
}
