$labubusi = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"
$limitGB = 67 # Robeža gigabaitos brīdinājumam
foreach ($labubu in $labubusi) {
    $totalGB = [math]::Round($labubu.Size / 1GB, 2)
    $freeGB = [math]::Round($labubu.FreeSpace / 1GB, 2)
    Write-Output "Disks $($labubu.DeviceID) - Kopējais izmērs: $totalGB GB, Brīvā vieta: $freeGB GB"
    if ($freeGB -lt $limitGB) {
        Write-Output "BRĪDINĀJUMS: Diskam $($labubu.DeviceID) brīvā vieta ir mazāka par $limitGB GB!"
    }
}
#skibidi dop dop dop yes yes yes... 10?