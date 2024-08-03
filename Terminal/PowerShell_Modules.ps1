# Install Starship
winget install starship

# Set PSGallery as Trusted Repo
echo "Setting PSGallery as Trusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted 

# Install Modules
echo "Installing Modules"
Install-Module -Name DockerCompletion -Scope CurrentUser
Install-Module -Name PSKubectlCompletion -Scope CurrentUser
Install-Module -Name Terminal-Icons -Scope CurrentUser

# Set PSGallery as Untrusted Repo
echo "Setting PSGallery as Untrusted Repo"
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Untrusted

# Copy file kunal_starship.toml to ~/Documents/PowerShell/StarshipThemes
echo "Copy file kunal_starship.toml to ~/Documents/PowerShell/StarshipThemes"
$starshipThemePath = "$HOME/Documents/PowerShell/StarshipThemes"
if(!(Test-Path $starshipThemePath)) {
    mkdir $starshipThemePath
}
cp ./kunal_starship.toml $starshipThemePath/kunal_starship.toml

# Initialize PowerShell
echo "Copy contents of powershell_profile.ps1 to $profile"
cat ./powershell_profile.ps1 > $profile
