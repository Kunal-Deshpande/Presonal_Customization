# Set PSGallery as Trusted Repo
Write-Output "Setting PSGallery as Trusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted 

# Install Modules
Write-Output "Installing Modules"
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -Scope CurrentUser -RequiredVersion 2.0.2
Install-Module -Name DockerCompletion -Scope CurrentUser
Install-Module WslInterop

# Set PSGallery as Untrusted Repo
Write-Output "Setting PSGallery as Untrusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Untrusted

# Copy file Kunal_Agnoster.psm1 to ~\Documents\WindowsPowerShell\PoshThemes
Write-Output "Copy file Kunal_Agnoster.psm1 to ~\Documents\WindowsPowerShell\PoshThemes"
$powerShellPath = "$HOME\Documents\WindowsPowerShell\PoshThemes"
if(!(Test-Path $powerShellPath)) {
    New-Item -Path $powerShellPath -ItemType Directory
}
Copy-Item ./Kunal_Agnoster.psm1 $powerShellPath\Kunal_Agnoster.psm1

# Copy file Kunal_Agnoster.psm1 to ~\Documents\PowerShell\PoshThemes
Write-Output "Copy file Kunal_Agnoster.psm1 to ~\Documents\PowerShell\PoshThemes"
$powerShellPath = "$HOME\Documents\PowerShell\PoshThemes"
if(!(Test-Path $powerShellPath)) {
    New-Item -Path $powerShellPath -ItemType Directory
}
Copy-Item ./Kunal_Agnoster.psm1 $powerShellPath\Kunal_Agnoster.psm1

# Initialize PowerShell
Write-Output "Copy contents of PowerShell_Modules.ps1 to $profile"
Get-Content ./PowerShell_profile.ps1 > $profile
