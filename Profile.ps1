<#
File location:
cp ./Profile.ps1 C:\Users\dkoldunov\Documents\WindowsPowerShell
#>

New-PSDrive -Name Git -PSProvider FileSystem `
    -Root 'C:\Users\dkoldunov\Documents' `
    -Description 'dkoldunov@ drive'