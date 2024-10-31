# Eleva privilégios para rodar o script com permissões de administrador
if (!([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Por favor, execute este script como Administrador"
    exit
}

# Habilita o WSL e instala a distribuição padrão Ubuntu
Write-Host "Habilitando WSL e instalando Ubuntu..."

# Ativa o recurso WSL
wsl --install

# Ativa a funcionalidade necessária para o WSL 2
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Define o WSL2 como versão padrão
wsl --set-default-version 2

# Instala a distribuição Ubuntu
wsl --install -d Ubuntu

Write-Host "WSL habilitado com sucesso. Configure a distribuição e execute o Ansible para configuração adicional."