param(
    [string]$ResourceGroup,
    [string]$VMName
)

Write-Host "Removing $VMName ..."

try {
    Remove-AzVM -ResourceGroupName $ResourceGroup -Name $VMName -Force
    Write-Host "VM removed"
}
catch {
    Write-Error $_
}
