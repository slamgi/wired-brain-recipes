
# retrieve computer objects with a server operating system in AD
$servers = Get-ADComputer -Filter {(OperatingSystem -like "*server*")}

# ping each server once
foreach ($srv in $servers) {
    Test-Connection -ComputerName $srv.Name -Count 1
}