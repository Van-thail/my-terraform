provider "aws"{

region = "us-east-1"
}


output "environment_upper" {
  value = upper(var.environment)
}
