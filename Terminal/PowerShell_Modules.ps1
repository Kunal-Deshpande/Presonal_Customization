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

# Set PSGallery as Untrusted Repo
echo "Setting PSGallery as Untrusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Untrusted

# Copy file kunal.omp.json to ~\Documents\WindowsPowerShell\PoshThemes
echo "Copy file kunal.omp.json to ~\Documents\PowerShell\PoshThemes"
$powerShellPath = "$HOME\Documents\PowerShell\PoshThemes"
if(!(Test-Path $powerShellPath)) {
    mkdir $powerShellPath
}
cp ./kunal.omp.json $powerShellPath\kunal.omp.json

# Initialize PowerShell
echo "Copy contents of powershell_profile.ps1 to $profile"
cat ./powershell_profile.ps1 > $profile
