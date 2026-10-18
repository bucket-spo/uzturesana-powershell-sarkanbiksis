$drivers = Get-WmiObject -Class Win32_SystemDriver | Where-Object -Property ProviderName -NotMatch "Microsoft"
$drivers | Export-Csv -Path "draiveri.csv" -NoTypeInformation
Write-Output "CSV failā ir $($drivers.Count) rindas."