Invoke-Expression (&starship init powershell)

$ENV:STARSHIP_CONFIG = "$HOME/Documents/PowerShell/StarshipThemes/kunal_starship.toml"

Import-Module DockerCompletion
Import-Module PSKubectlCompletion
Import-Module Terminal-Icons

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -PredictionSource History
