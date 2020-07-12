# A Power Shell Script To create windows 2016 file server container
# Fousiya Padinjarepeedikayil Hameed - 12/Aug/2020

echo "Installing container feature in windows 2016"
install-windowsfeature -name containers, hyper-v

echo "Set TLS version to TLS1.2 "
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

echo "Install PowerShellGet module "
Install-Module PowerShellGet -RequiredVersion 2.2.4 -SkipPublisherCheck

echo "command to save PowershellGet repository documents to LocalFolder"
Save-Module -Name PowerShellGet -Path C:\LocalFolder -Repository PSGallery

echo "commands to set environment variables"
Copy-Item "C:\LocalFolder\PowerShellGet\2.2.4.1\*" "$env:ProgramFiles\WindowsPowerShell\Modules\PowerShellGet\" -Recurse -Force
Copy-Item "C:\LocalFolder\PackageManagement\1.4.7\*" "$env:ProgramFiles\WindowsPowerShell\Modules\PackageManagement\" -Recurse -Force

echo "Install docker provider module "
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force

echo "Install docker package"
Install-Package -Name docker -ProviderName DockerMsftProvider

echo "pulling windows 2016 server core image from docker hub"
docker pull mcr.microsoft.com/windows/servercore:ltsc2016

echo "creating container from windows server image"
docker run -it mcr.microsoft.com/windows/servercore:ltsc2016 powershell

echo "Inside windows server container power shell"

echo "Installing file services inside container"
install-windowsfeature File-Services




