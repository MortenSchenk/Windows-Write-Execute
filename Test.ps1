$file = "C:\Windows\system32\calc.exe"
$stored = "C:\poc\log.txt"
$res = "C:\poc\res.txt"

#For each found subfolder try to copy C:\Windows\System32\calc.exe to it, if success write to file and console
$data = Get-Content $stored
foreach($line in $data)
{
    Copy-Item -Path $file -Destination $line -PassThru -ErrorAction silentlyContinue
    if($?)
    {
        Write-Host "File copied to " $line
        Out-File -FilePath $res -InputObject $line -Append
    }
}
