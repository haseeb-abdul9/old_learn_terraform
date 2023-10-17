variable "sample" {
  default = "abcdef"
}
output "sample" {
  value = upper(var.sample)
}


variable "sample2" {
  default = [ "abc", "xyz" ]
}
output "sample2" {
  value = var.sample2[0]
}

variable "sample3" {
  default = [ "abc", "xyz" ]
}

output "sample3" {
  value = element(var.sample3, 0)
}

