# PSFzf
Import-Module PSFzf
Enable-PsFzfAliases
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# oh-my-posh
Import-Module oh-my-posh
Set-PoshPrompt -Theme atomic

# touch command to make an empty file
function touch($filename) {New-Item -type file $filename}

