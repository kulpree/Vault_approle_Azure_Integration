module "GET-TOKEN-VIA-APPROLE" {
  source = "./token_role_seeding_approle_a"
  role_id_a = var.role_id_a
  secret_id_a = var.secret_id_a
}


module "GET-SECRETID-B-APPROLE" {
  depends_on = [module.GET-TOKEN-VIA-APPROLE]
  source = "./approle-b"
  secret_id_b = module.GET-TOKEN-VIA-APPROLE.secret_id_b
  role_id_b = var.role_id_b
}