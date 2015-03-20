$packageName = 'piskel'
$url = 'https://drive.google.com/uc?export=download&id=0BwPjxqZA0YlRNXRzZXlrc2F1SjQ'

# download and unpack a zip file
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$src = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "piskel\\Piskel-0.4.2.exe"
Rename-Item -Path $src -newName "Piskel.exe"

