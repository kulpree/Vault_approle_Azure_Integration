module "GET-TOKEN-VIA-APPROLE" {
  source = "./token_role_seeding_approle_a"
}


module "GET-SECRETID-B-APPROLE" {
  depends_on = [module.GET-TOKEN-VIA-APPROLE]
  source = "./approle-b"
  secret_id_b = module.GET-TOKEN-VIA-APPROLE.secret_id
}