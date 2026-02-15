#Reiniciar VM VDI

param(
    [string]$VMName
)

Write-Host "Restarting $VMName..."

try {
    Restart-VMGuest -VM $VMName -Confirm:$false
}
catch {
    Write-Error $_
}
