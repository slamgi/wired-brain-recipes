$servers = get-adcomputer -filter {(OperatingSystem -like "*server*")}

foreach ($SRV IN $servers) {
Test-Connection -ComputerName $srv.Name -Count 1
}