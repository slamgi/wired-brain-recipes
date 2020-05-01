$servers = get-adcomputer -filter {(OperatingSystem -like "*10*")}

foreach ($SRV IN $servers) {
Test-Connection -ComputerName $srv.Name -Count 1
}