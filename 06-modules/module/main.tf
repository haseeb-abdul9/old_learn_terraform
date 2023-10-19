resource "null_resource" "existing" {
  provisioner "local-exec" {
    command = "echo hello world from module - input ${var.input}"
  }
}

/*resource "null_resource" "nothing1" {
  provisioner "local-exec" {
    command = "echo hello world from module1"
  }
}

resource "null_resource" "nothing2" {
  provisioner "local-exec" {
    command = "echo hello world from module2"
  }
}*/

variable "input" {}