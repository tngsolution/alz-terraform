module "alz" {
  source  = "Azure/avm-ptn-alz/azurerm"
  version = "~> 0.21"

  architecture_name  = try(var.architecture_name, "alz")
  location           = try(var.location, "francecentral")
  parent_resource_id = var.tenant_id

  enable_telemetry = false

  policy_assignments_to_modify = {
    alz = {
      policy_assignments = {
        Deploy-MDEndpoints = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-MDEndpointsAMA = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-MDFC-Config-H224 = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-MDFC-SqlAtp = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-MDFC-OssDb = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-AzActivity-Log = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-SvcHealth-BuiltIn = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-Diag-LogsCat = {
          enforcement_mode = "DoNotEnforce"
        }
      }
    }
    landingzones = {
      policy_assignments = {
        Deploy-VM-ChangeTrack = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-VM-Backup = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-MDFC-DefSQL-AMA = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-GuestAttest = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-VMSS-Monitoring = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-VM-Monitoring = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-vmArc-ChangeTrack = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-VMSS-ChangeTrack = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-vmHybr-Monitoring = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-AzSqlDb-Auditing = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-SQL-TDE = {
          enforcement_mode = "DoNotEnforce"
        }
        Deploy-SQL-Threat = {
          enforcement_mode = "DoNotEnforce"
        }
        Enable-DDoS-VNET = {
          enforcement_mode = "DoNotEnforce"
        }
        Enforce-ASR = {
          enforcement_mode = "DoNotEnforce"
        }
        Enforce-TLS-SSL-Q225 = {
          enforcement_mode = "DoNotEnforce"
        }
        Enable-AUM-CheckUpdates = {
          enforcement_mode = "DoNotEnforce"
        }
        Enforce-GR-KeyVault = {
          enforcement_mode = "DoNotEnforce"
        }
      }
    }
  }
}
