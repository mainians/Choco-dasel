$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$env:ChocolateyPackageName.exe"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/TomWright/dasel/releases/download/v2.7.0/dasel_windows_amd64.exe"
}
else {
  $url64 = "https://download.fgit.cf/TomWright/dasel/releases/download/v2.7.0/dasel_windows_amd64.exe"
}

$checksum64 = "08b9ec3361f92a6162bbb07779e6d9ad722336f0379c88429a472423e5f28892"

Get-ChocolateyWebFile $packageName $toolsDir $url64 -checksum64 $checksum64 
