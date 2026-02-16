#VMware Horizon — Scripts  | Aqui depende do PowerCLI
#Pré-requisito
#powershell - Install-Module VMware.PowerCLI -Scope CurrentUser
#Conexão com o vCenter
#Connect-VIServer vcenter.seudominio.local

#Criar VM Horizon
param(
    [string]$VMName,
    [string]$Template,
    [string]$Cluster,
    [string]$Datastore
)

Write-Host "Creating VDI $VMName..."

try {
    New-VM `
        -Name $VMName `
        -Template $Template `
        -VMHost (Get-Cluster $Cluster | Get-VMHost | Select -First 1) `
        -Datastore $Datastore

    Write-Host "VDI created"
}
catch {
    Write-Error $_
}


