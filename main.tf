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