resource "null_resource" "null" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo${var.fruits[count.index]}"
  }
}


variable "fruits" {
  default = [ "spple", "banana", "mango" ]
}

