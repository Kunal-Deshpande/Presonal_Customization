# Set PSGallery as Trusted Repo
echo "Setting PSGallery as Trusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted 

# Install Modules
echo "Installing Modules"
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -Scope CurrentUser -RequiredVersion 2.0.2
Install-Module -Name DockerCompletion -Scope CurrentUser
Install-Module -Name PSKubectlCompletion -Scope CurrentUser
Install-Module WslInterop -Scope CurrentUser

# Set PSGallery as Untrusted Repo
echo "Setting PSGallery as Untrusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Untrusted

# Copy file Kunal_Agnoster.psm1 to ~\Documents\WindowsPowerShell\PoshThemes
echo "Copy file Kunal_Agnoster.psm1 to ~\Documents\WindowsPowerShell\PoshThemes"
$powerShellPath = "$HOME\Documents\WindowsPowerShell\PoshThemes"
if(!(Test-Path $powerShellPath)) {
    mkdir $powerShellPath
}
cp ./Kunal_Agnoster.psm1 $powerShellPath\Kunal_Agnoster.psm1

# Copy file Kunal_Agnoster.psm1 to ~\Documents\PowerShell\PoshThemes
echo "Copy file Kunal_Agnoster.psm1 to ~\Documents\PowerShell\PoshThemes"
$powerShellPath = "$HOME\Documents\PowerShell\PoshThemes"
if(!(Test-Path $powerShellPath)) {
    mkdir $powerShellPath
}
cp ./Kunal_Agnoster.psm1 $powerShellPath\Kunal_Agnoster.psm1

# Initialize PowerShell
echo "Copy contents of PowerShell_Modules.ps1 to $profile"
cat ./PowerShell_profile.ps1 > $profile
