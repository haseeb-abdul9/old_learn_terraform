resource "null_resource" "null" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo fruit name - ${var.fruits[count.index]}"
  }
}


variable "fruits" {
  default = [ "apple", "banana", "mango" ]
}

resource "null_resource" "null" {
  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value["count"]}"
  }
}



variable "fruits1" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    banana = {
      name = "banana"
      count = 20
    }
    mango = {
      name = "mango"
      count = 30
    }
  }
}


variable "fruits1" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    banana = {
      name = "banana"
      count = 20
    }
    mango = {
      name = "mango"
      count = 30
    }
  }
}