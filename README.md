<!-- markdownlint-disable -->
<p align="center">
    <a href="https://github.com/TerraformToolbox/">
        <img src="https://cdn.wolfsoftware.com/assets/images/github/organisations/terraformtoolbox/black-and-white-circle-256.png" alt="TerraformToolbox logo" />
    </a>
    <br />
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/actions/workflows/cicd.yml">
        <img src="https://img.shields.io/github/actions/workflow/status/TerraformToolbox/terraform-aws-iam-account-password-policy/cicd.yml?branch=master&label=build%20status&style=for-the-badge" alt="Github Build Status" />
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/blob/master/LICENSE.md">
        <img src="https://img.shields.io/github/license/TerraformToolbox/terraform-aws-iam-account-password-policy?color=blue&label=License&style=for-the-badge" alt="License">
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy">
        <img src="https://img.shields.io/github/created-at/TerraformToolbox/terraform-aws-iam-account-password-policy?color=blue&label=Created&style=for-the-badge" alt="Created">
    </a>
    <br />
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/releases/latest">
        <img src="https://img.shields.io/github/v/release/TerraformToolbox/terraform-aws-iam-account-password-policy?color=blue&label=Latest%20Release&style=for-the-badge" alt="Release">
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/releases/latest">
        <img src="https://img.shields.io/github/release-date/TerraformToolbox/terraform-aws-iam-account-password-policy?color=blue&label=Released&style=for-the-badge" alt="Released">
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/releases/latest">
        <img src="https://img.shields.io/github/commits-since/TerraformToolbox/terraform-aws-iam-account-password-policy/latest.svg?color=blue&style=for-the-badge" alt="Commits since release">
    </a>
    <br />
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/blob/master/.github/CODE_OF_CONDUCT.md">
        <img src="https://img.shields.io/badge/Code%20of%20Conduct-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/blob/master/.github/CONTRIBUTING.md">
        <img src="https://img.shields.io/badge/Contributing-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/blob/master/.github/SECURITY.md">
        <img src="https://img.shields.io/badge/Report%20Security%20Concern-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/TerraformToolbox/terraform-aws-iam-account-password-policy/issues">
        <img src="https://img.shields.io/badge/Get%20Support-blue?style=for-the-badge" />
    </a>
</p>

## Overview

A Terraform module for creating and managing IAM account password policies.

## Usage

```
module "password_policy" {
  source = "github.com/TerraformToolbox/terraform-aws-iam-account-password-policy"

  allow_user_change = true
  hard_expiry       = false
  maximum_age       = 90
  minimum_length    = 16
  require_lowercase = true
  require_numbers   = true
  require_symbols   = true
  require_uppercase = true
  reuse_history     = 24
}
```

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- |:----:|:-------:|:--------:|
| allow_user_change | Allow users to change their own password? | bool | false | No |
| hard_expiry | Prevented from setting a new password after their password has expired? | bool | false | No |
| maximum_age | The number of days that an user password is valid. | number | 90 | No |
| minimum_length | The shortest length a password can be. | number | 16 | No |
| require_lowercase | Must the password contain lowercase characters? | bool | true | No |
| require_numbers | Must the password contain numbers? | bool | true | No |
| require_symbols | Must the password contain symbols? | bool | true | No |
| require_uppercase | Must the password contain uppercase characters? | bool | true | No |
| reuse_history | The number of previous passwords that users are prevented from reusing. | number | 24 | No |

## Outputs

| Name | Description |
| ---- | ----------- |
| expire_passwords | Indicates whether passwords in the account expire. Returns true if max_password_age contains a value greater than 0. Returns false if it is 0 or not present. |

<br />
<p align="right"><a href="https://wolfsoftware.com/"><img src="https://img.shields.io/badge/Created%20by%20Wolf%20on%20behalf%20of%20Wolf%20Software-blue?style=for-the-badge" /></a></p>
