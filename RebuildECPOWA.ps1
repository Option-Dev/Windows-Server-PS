remove-owavirtualdirectory -identity "exch2013\owa (Default Web Site)"
remove-ecpvirtualdirectory -identity "exch2013\ecp (Default Web Site)"
remove-WebApplication -Site "Exchange Back End" -Name owa
remove-WebApplication -Site "Exchange Back End" -Name ecp
new-owavirtualdirectory
new-ecpvirtualdirectory
New-WebApplication -Site "Exchange Back End" -Name owa -PhysicalPath "C:\Program Files\Microsoft\Exchange Server\V15\ClientAccess\owa" -ApplicationPool MSExchangeOWAAppPool
New-WebApplication -Site "Exchange Back End" -Name ecp -PhysicalPath "C:\Program Files\Microsoft\Exchange Server\V15\ClientAccess\ecp" -ApplicationPool MSExchangeECPAppPool


Get-MigrationUserStatistics -Identity dyoung@cremedelacreme -IncludeReport | Format-List Status,Error,Report