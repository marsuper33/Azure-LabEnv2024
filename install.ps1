winget install --id Microsoft.PowerShell --silent --accept-package-agreements
winget install --id Git.Git --silent --accept-package-agreements
winget install --id Microsoft.VisualStudioCode --silent --accept-package-agreements
winget install --id Microsoft.VisualStudio.2022.Community --silent --accept-package-agreements --override "--wait --quiet --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetWeb"
winget install --id Microsoft.AzureStorageEmulator --silent --accept-package-agreements
winget install --id Microsoft.AzureStorageExplorer --silent --accept-package-agreements
winget install --id Docker.DockerDesktop --silent --accept-package-agreements
wsl --update
