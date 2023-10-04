resource "null_resource" "null" {
  count = length(var.list)
}


variable "list" {
  default = [ "spple", "banana", "mango" ]
}