Get-EcpVirtualDirectory | Set-EcpVirtualDirectory -FormsAuthentication $false -BasicAuthentication $true -WindowsAuthentication $true
Get-OWAVirtualDirectory | Set-OWAVirtualDirectory -FormsAuthentication $false -BasicAuthentication $true -WindowsAuthentication $true
iisreset
Restart-WebAppPool MSExchangeECPAppPool
Restart-WebAppPool MSExchangeOWAAppPool
