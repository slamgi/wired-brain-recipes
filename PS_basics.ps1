
# cmdlet
Get-Service

# parameter
Get-Service -Name wuauserv

# pipeline
Get-Service -Name wuauserv | Start-Service
Get-Service | Stop-Service

# alias
gsv -Name wuauserv


#  search engine for commands
Get-Command *service

# view help topic
Get-Help Get-Service
Get-Help Restart-Service

# get object members
Get-Service | Get-Member


# create function
Function Get-RunningServices {
    
    Param (
        $ComputerName
    )
    
    Get-Service -ComputerName $ComputerName | 
        Where-Object Status -eq 'Running'

}

# use function
Get-RunningServices -ComputerName HV-NUG
Get-RunningServices -ComputerName FS-NUG
Get-RunningServices -ComputerName WEB-NUG