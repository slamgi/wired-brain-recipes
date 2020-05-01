
### PowerShell Challenge ###
# 1) View the members of Get-ChildItem
# 2) Use Get-ChildItem to retrieve all files with the extension .pptx
# 3) Return the following properties: FullName, CreationTime, LastAccessTime, Mode, Length
# 4) Sort by LastWriteTime in descending order
# 5) Format it as a table using AutoSize
#
# BONUS: Rewrite it using only aliases

# view members of Get-ChildItem
Get-ChildItem | Get-Member

# full version
Get-ChildItem C:\Nuggetlab\ -Recurse | 
    Where-Object {$_.Extension -eq ".pptx"} | 
        Select-Object FullName, CreationTime, LastAccessTime, Mode, Length | 
            Sort-Object LastWriteTime -Descending | 
                Format-Table -AutoSize

# alias version
dir C:\Nuggetlab\ -Recurse | 
    ?{$_.Extension -eq ".pptx"} | 
        select FullName, CreationTime, LastAccessTime, Mode, Length | 
            sort LastWriteTime -Descending | 
                ft -AutoSize