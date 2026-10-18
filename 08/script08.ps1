$time1 = measure-command { get-service -name spooler }
$time2 = measure-command { get-ciminstance -classname win32_service -filter "name='Spooler'" }
write-output "Get-Service izpildes laiks: $($time1.TotalMilliseconds) ms"
write-output "Get-CimInstance izpildes laiks: $($time2.TotalMilliseconds) ms"