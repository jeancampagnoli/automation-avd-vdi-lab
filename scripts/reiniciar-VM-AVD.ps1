param(
    [string]$ResourceGroup,
    [string]$VMName
)

Write-Host "Restarting $VMName ..."

try {
    Restart-AzVM -ResourceGroupName $ResourceGroup -Name $VMName -Force
    Write-Host "Restart completed"
}
catch {
    Write-Error $_
}
