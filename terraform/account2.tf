module "sandbox_account02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "aws-cues-dev-5@cuesinc.com"
      AccountName               = "sandbox_account02"
      ManagedOrganizationalUnit = "AFT (ou-dld9-73newpki)"
      SSOUserEmail              = "aws-cues-dev-5@cuesinc.com"
      SSOUserFirstName          = "Jacob"
      SSOUserLastName           = "Sanchez"
    }

  account_tags = {
    "application" = "AFT"
    "business_region" = "us-east-1"
    "owner" = "aws-cues-dev-3@cuesinc.com"
  }
  
  change_management_parameters = {
    change_requested_by = "Jacob Sanchez"
    change_reason       = "AWS Control Tower Account Factory for Terraform test run v1"
  }

  account_customizations_name = "sandbox"
}

