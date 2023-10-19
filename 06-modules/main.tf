module "sample" {
  source = "./module"
  input = module.dummy.dummy
}

module "dummy" {
  source = "./dummy"
}