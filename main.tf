terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

variable "file_name" {
  default = "hello.txt"
}

variable "message" {
  default = "Hello Terraform!"
}

resource "local_file" "hello" {
  filename = var.file_name
  content  = var.message
}

output "file_path" {
  value = local_file.hello.filename
}

output "file_content" {
  value = local_file.hello.content
}