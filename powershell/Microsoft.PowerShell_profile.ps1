Import-Module oh-my-posh
Import-Module PSFzf
Import-Module posh-git

# PSFzf
Enable-PsFzfAliases
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# oh-my-posh
Set-PoshPrompt -Theme atomic
$env:POSH_GIT_ENABLED = $true

# touch command to make an empty file
function touch($filename) {New-Item -type file $filename}

