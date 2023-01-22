# Invoke-WebRequest 'https://cdn.winget.microsoft.com/cache/source.msix' -OutFile 'c:\downloads\Microsoft.Winget.Source.msix' -UseBasicParsing

# Push-Location 'c:\downloads'
# Add-AppxPackage -Path 'Microsoft.Winget.Source.msix'
# Pop-Location

Write-Host "Starting script at $(Get-Date -format 't')" -ForegroundColor Yellow

Write-Host "winget not available at $(Get-Date -format 't')" -ForegroundColor Red
while (!(Get-Command -Name winget -ErrorAction SilentlyContinue)) {
  Start-Sleep 5
}
Write-Host "winget now available at $(Get-Date -format 't')" -ForegroundColor Green

winget install --id Microsoft.PowerShell --silent --accept-source-agreements --accept-package-agreements

winget install --id Git.Git --silent --accept-source-agreements --accept-package-agreements

winget install --id Microsoft.VisualStudioCode --silent --accept-source-agreements --accept-package-agreements

winget install --id Microsoft.VisualStudio.2022.Community --silent --accept-source-agreements --accept-package-agreements --override "--wait --quiet --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetWeb"

winget install --id Microsoft.AzureStorageEmulator --silent --accept-source-agreements --accept-package-agreements

winget install --id Microsoft.AzureStorageExplorer --silent --accept-source-agreements --accept-package-agreements

winget install --id Microsoft.AzureCosmosEmulator --silent --accept-source-agreements --accept-package-agreements

winget install --id Docker.DockerDesktop --silent --accept-source-agreements --accept-package-agreements

Write-Host "Ending script at $(Get-Date -format 't')" -ForegroundColor Yellow

# Restart-Computer -Force

# Start Docker Desktop
# Start-Process -FilePath "C:\Program Files\Docker\Docker\Docker Desktop.exe"

# Update WSL2
# wsl --update

# Restart VM
