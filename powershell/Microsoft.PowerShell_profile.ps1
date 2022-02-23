Import-Module oh-my-posh
Import-Module posh-git
Import-Module PSFzf

# oh-my-posh
Set-PoshPrompt -Theme atomic
$env:POSH_GIT_ENABLED = $true

# PSFzf
Enable-PsFzfAliases
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# touch command to make an empty file
function touch($filename) {New-Item -type file $filename}

