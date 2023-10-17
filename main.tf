variable "sample" {
  default = "abcdef"
}
output "sample" {
  value = upper(var.sample)
}

echo printing first value without functions

variable "sample2" {
  default = [ "abc" , "xyz" ]
}
output "sample2" {
  value = var.sample2[0]
}

echo printing first value with functions

variable "sample2" {
  default = [ "abc" , "xyz" ]
}
output "sample3" {
  value = element(var.sample3, 0 )
}