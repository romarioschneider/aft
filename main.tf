module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory?ref=1.4.2"
  ct_management_account_id    = "596966523393"
  log_archive_account_id      = "314854817426"
  audit_account_id            = "435016453613"
  aft_management_account_id   = "061070186226"
  ct_home_region              = "eu-central-1"
  tf_backend_secondary_region = "us-east-1"

  vcs_provider                                  = "github"
  account_request_repo_name                     = "romarioschneider/learn-terraform-aft-account-request"
  account_provisioning_customizations_repo_name = "romarioschneider/learn-terraform-aft-account-provisioning-customizations"
  global_customizations_repo_name               = "romarioschneider/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "romarioschneider/learn-terraform-aft-account-customizations"

  terraform_distribution = "tfc"
  terraform_token        = var.tfc_token
  terraform_org_name     = "test_stuff"
}
