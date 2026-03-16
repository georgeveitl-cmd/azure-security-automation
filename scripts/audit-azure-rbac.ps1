# Azure RBAC Audit Script
# This script lists all Azure role assignments and exports them to a CSV report.

Connect-AzAccount

$roles = Get-AzRoleAssignment

$roles | Select-Object `
DisplayName,
SignInName,
RoleDefinitionName,
Scope `
| Export-Csv -Path "azure_rbac_audit.csv" -NoTypeInformation

Write-Host "RBAC audit export complete."
