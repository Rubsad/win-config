$folder = "$env:USERPROFILE\Tools\OOSU"
if (-not (Test-Path "$folder"))
{
    mkdir "$folder"
}

$exists = Test-Path "$folder\OOSU10.exe" -PathType Leaf
if ($exists)
{
    exit 0
}

Invoke-WebRequest "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -OutFile "$folder\OOSU10.exe"
Invoke-WebRequest "https://raw.githubusercontent.com/rubsad/win-config/main/ooshutup10.cfg" -UseBasicParsing -OutFile "$folder\ooshutup10.cfg"
& $folder\OOSU10.exe $folder\ooshutup10.cfg /quiet