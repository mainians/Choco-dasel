$ErrorActionPreference = 'Stop'

Get-Process -Name 'dasel' -ErrorAction SilentlyContinue | Stop-Process
