# Eleva privilégios para rodar o script com permissões de administrador
if (!([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Por favor, execute este script como Administrador"
    exit
}

# Desinstala a distribuição Ubuntu e remove o WSL
Write-Host "Removendo o WSL e a distribuição Ubuntu..."

wsl --unregister Ubuntu
dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /disable-feature /featurename:VirtualMachinePlatform /all /norestart

Write-Host "WSL e distribuição Ubuntu removidos com sucesso."