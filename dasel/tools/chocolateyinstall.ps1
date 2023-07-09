$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$env:ChocolateyPackageName.exe"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/TomWright/dasel/releases/download/v2.3.4/dasel_windows_amd64.exe"
}
else {
  $url64 = "https://download.fgit.ml/TomWright/dasel/releases/download/v2.3.4/dasel_windows_amd64.exe"
}

$checksum64 = "cb72c67593b08a94f66a21244bf902f75949d6a815a51b97022db4491183cede"

Get-ChocolateyWebFile $packageName $toolsDir $url64 -checksum64 $checksum64 
