$date = Get-Date -Format "yyyy-MM-dd"
Compress-Archive -Path './Downloads' -CompressionLevel Fastest -DestinationPath "./backup-$date"
Write-Host "Created backup at $('./backup-' + $date + '.zip')"
