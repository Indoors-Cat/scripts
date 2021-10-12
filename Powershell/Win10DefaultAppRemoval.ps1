###Removal of default Windows applications that no one uses in Windows10
##Will be making use of winget as this allows us to install replacement packages if needed
winget uninstall --id "Microsoft.Edge" ;
winget uninstall "OneDrive" ;

##Will use winget to install the browser you actually want to use.
#Comment out the lines you do not want, or uncomment the ones you do:
winget install --id "Mozilla.Firefox" ;
#winget install --id "Mozilla.FirefoxESR" ;
#winget install --id "Google.Chrome" ;
#winget install --id "Google.Chrome.Beta" ;
#winget install --id "BraveSoftware.BraveBrowser" ;

Get-AppxPackage "Microsoft.BindWeather" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.GetHelp" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.GetStarted" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.Microsoft3DViewer" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.MicrosoftOfficeHub" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.MicrosoftSolitaireCollection" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.MixedReality.Portal" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.Office.OneNote" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.People" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.SkypeApp" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.Wallet" | Remove-AppxPackage ;
#Get-AppxPackage "Microsoft.Windows.Photos" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.WindowsAlarms" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.WindowsCamera" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.WindowsFeedbackHub" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.WindowsMaps" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.WindowsSoundRecorder" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.Xbox.TCUI" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.XboxApp" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.XboxGameOverlay" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.XboxGamingOverlay" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.XboxIdentityProvider" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.XboxSpeechToTextOverlay" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.YourPhone" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.ZuneMusic" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.ZuneVideo" | Remove-AppxPackage ;
Get-AppxPackage "Microsoft.OneDrive" | Remove-AppxPackage ;

###Simple GUI text box outputting that the script has finished running
Add-Type -AssemblyName PresentationCore,PresentationFramework
$Button = [System.Windows.MessageBoxButton]::YesNo
$MessageTitle = "Congratulations!"
$MessageBody = "Script completed!"
[System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$Button)
