Import-Module posh-git
Import-Module oh-my-posh
Import-Module DockerCompletion
Import-Module PSKubectlCompletion
Import-Module Terminal-Icons
Set-PoshPrompt -Theme $HOME\Documents\PowerShell\PoshThemes\kunal.omp.json

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -PredictionSource History
