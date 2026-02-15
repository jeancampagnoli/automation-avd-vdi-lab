param(
    [string]$ResourceGroup,
    [string]$VMName,
    [string]$Location,
    [string]$Image,
    [string]$SubnetId,
    [string]$Size = "Standard_D4s_v5"
)

Write-Host "Creating VM $VMName ..."

try {
    $cred = Get-Credential

    New-AzVM `
        -ResourceGroupName $ResourceGroup `
        -Name $VMName `
        -Location $Location `
        -Image $Image `
        -Size $Size `
        -SubnetId $SubnetId `
        -Credential $cred

    Write-Host "VM created successfully"
}
catch {
    Write-Error $_
}
