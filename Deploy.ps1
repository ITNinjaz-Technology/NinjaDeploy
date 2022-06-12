#THIS IS THEY SCRIPT THATS DEPLOYED FROM YOUR RMM SOLUTION TO THE TARGET MACHINE

#Author: Christopher Sparrowgrove | Owner | CTO
#Company: IT Ninjas Technology, LLC
#Tool_Name: Ninja Deploy v. 2.0
#App_Name: Onboarding Script
#Desc: Ninja Deploy is a tool for Deploying software to a clients machine and onboarding them to IT Ninjas Technology RMM


###Onboarding Script Download PARAMS
$Onboarding_URL = "http://example.com/Onboarding.ps1";
$Onboarding_FILE = "C:\Windows\Temp\NinjaRMM\Onboarding.ps1e";


########START SCRIPT
#Download
Invoke-WebRequest -Uri $Onboarding_URL -OutFile $Onboarding_FILE 
#UnBlock
Unblock-File -Path $Onboarding_FILE; 

#DEPLOYMENT
powershell.exe -ExecutionPolicy Bypass -File C:\Windows\Temp\NinjaRMM\Onboarding.ps1


