# alz-terraform

Example Terraform repository using the Azure/avm-ptn-alz/azurerm/latest module.

Prerequisites
- Terraform 1.0+
- tfenv (recommended) to manage Terraform versions
  - macOS (Homebrew): `brew install tfenv`
  - Linux / other: `git clone https://github.com/tfutils/tfenv.git ~/.tfenv && export PATH="$HOME/.tfenv/bin:$PATH"`
  - Install and select a version: `tfenv install <version>` then `tfenv use <version>`
- Azure credentials (AZURE_SUBSCRIPTION_ID, AZURE_CLIENT_ID, AZURE_CLIENT_SECRET, AZURE_TENANT_ID) configured or use `az login`

Usage
1. Edit `variables.tf` as needed
2. terraform init
3. terraform plan -var "prefix=..." -var "location=..."
4. terraform apply -var "prefix=..." -var "location=..."

Notes
- Adjust module variables to fit your needs. This repository is a starter template.
