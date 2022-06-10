#Simple Practice 1

#List filnames in Directory
Get-ChildItem -path D:\Test

#List our all filenames in all the SUB dirctories
Get-ChildItem -path D:\Test -Recurse | Where-Object {$_.PSIsContainer -eq $false}

#Lists out all filenames and Last modified date
Get-ChildItem

#List out all filenames with their file size
Get-ChildItem -path D:\Test\ -Recurse

#The write time attribute is given using the Get-ChildItem