$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$env:ChocolateyPackageName.exe"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_windows_amd64.exe"
}
else {
  $url64 = "https://mirror.ghproxy.com/https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_windows_amd64.exe"
}

$checksum64 = "9cb4cf2a7bbb8ef31118f551def3b5cefacb0a7d5f316c273d7d7b07d4d377ae"

Get-ChocolateyWebFile $packageName $toolsDir $url64 -checksum64 $checksum64 
