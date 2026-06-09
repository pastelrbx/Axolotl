$link = "https://github.com/pastelrbx/Axolotl/releases/latest/download/AxolotlCli.exe"

$outfile = "$env:TEMP\AxolotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
