# Install Apps from Winget
echo "Install Apps from Winget"
winget import -i ./apps.json

# Setup PowerShell
echo "Setup PowerShell"
cd Terminal
./powershell_modules.ps1
cd..

# Install VSCode Extensions
echo "Install VSCode Extensions"
./VSCode/vscode_extensions.ps1