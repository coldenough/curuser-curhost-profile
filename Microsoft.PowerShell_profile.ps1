<#
File location:
cp ./Microsoft.PowerShell_profile.ps1 `
    C:\Users\dkoldunov\Documents\WidowsPowerShell\Microsoft.PowerShell_profile.ps1
#>

# Reassign $HOME directory
Set-Variable -Name $HOME -Value 'C:\Users\dkoldunov' `
    -Description 'dkoldunov@ variable' -Option ReadOnly -Force

# PSDrives
New-PSDrive -Name Git -PSProvider FileSystem `
    -Root 'C:\Users\dkoldunov\Documents\GitHub\' `
    -Description 'dkoldunov@ drive'

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
. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
. (Resolve-Path "$env:github_posh_git\profile.example.ps1")