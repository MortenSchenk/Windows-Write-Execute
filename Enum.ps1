$seed = "C:\Windows"
$log = "C:\poc\log.txt"

#Iterate through all subfolders in the C:\Windows directory
[array]$dirs = Get-ChildItem $seed -Force -Recurse | Where-Object {$_.mode -match "d"}
foreach($dir in $dirs)
{
    Out-File -FilePath $log -InputObject $dir.FullName -Append
    #Write-Host $dir.FullName
}
