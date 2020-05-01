
# view help for cmdlet
Get-Help Get-ChildItem 


# return the item and child items from the file system
Get-ChildItem -Path C:\Nuggetlab

# return the item and child items and all child items of child items :)
Get-ChildItem -Path C:\Nuggetlab -Recurse

# filter for specific items
Get-ChildItem -Path C:\Nuggetlab -Recurse | Where-Object {$_.Extension -eq ".doc"}


# view object properties
Get-ChildItem -Path C:\Nuggetlab | Get-Member

# return specific properties
Get-ChildItem -Path C:\Nuggetlab -Recurse |
    Where-Object {$_.Extension -eq ".doc"} |
        Select-Object FullName, CreationTime, LastWriteTime, Mode, Length

# sort objects
Get-ChildItem -Path C:\Nuggetlab -Recurse |
    Where-Object {$_.Extension -eq ".doc"} |
        Select-Object FullName, CreationTime, LastWriteTime, Mode, Length |
            Sort-Object CreationTime -Descending

# format output
Get-ChildItem -Path C:\Nuggetlab -Recurse |
    Where-Object {$_.Extension -eq ".doc"} |
        Select-Object FullName, CreationTime, LastWriteTime, Mode, Length |
            Sort-Object CreationTime -Descending |
                Format-Table -AutoSize