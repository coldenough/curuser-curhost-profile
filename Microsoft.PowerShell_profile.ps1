<#
$dest = Split-Path $PROFILE.CurrentUserCurrentHost
Copy file to the following location:
cp ./Microsoft.PowerShell_profile.ps1 $dest
#>

# Reassign $HOME directory
Set-Variable -Name $HOME -Value 'C:\Users\dkoldunov' `
    -Description 'dkoldunov@ variable' -Option ReadOnly -Force

# PSDrives
$GitHubLocation = 'C:\Users\dkoldunov\Documents\GitHub'
if (Test-Path $GitHubLocation) {
New-PSDrive -Name Git -PSProvider FileSystem `
    -Root $GitHubLocation `
    -Description 'dkoldunov@ drive'
}

# Aliases
$nppAliasPath = "C:\Program Files (x86)\Notepad++\notepad++.exe"
if (Test-Path $nppAliasPath) {
  Set-Alias -Name npp -Value $nppAliasPath -Description 'dkoldunov@ aliases' `
      -Option ReadOnly
} #end of if

#Modules
Import-Module PSReadLine

# Posh Git
# Load posh-git example profile
if (Get-Module posh-git) {
  . (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
  . (Resolve-Path "$env:github_posh_git\profile.example.ps1")
}