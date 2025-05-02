module "ssh-key" {
  source = "./modules/ssh-key"
}

module "vm" {
  source = "./modules/vm"
  key_name = module.ssh-key.name
}