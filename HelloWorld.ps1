# Write-Output -InputObject 'Hello World!'
# New-Item HelloWorld.ps1 #Create new file
# code HelloWorld.ps1 #Write Code to new script file
Write-Output 'Hello World!'
# . ./HelloWorld.ps1 #Runs the script
$PSVersionTable #Verifies Powershell installation
$PSVersionTable.PSVersion #Gets the Powershell version table
Get-Help -Name 'Write-Output' -Full
Get-Command -Noun a-noun* #This command searches for all cmdlets whose noun part starts with a-noun
Get-Command -Verb Get -Noun a-noun* #search to specify that the verb part needs to match Get, and the noun part needs to match a-noun
Get-Command -Noun File* #Run the command Get-Command with the flag -Noun. Specify File* to find anything related to files
Get-Command -Verb Get -Noun File* #Search returns both the -Noun parameter and the -Verb parameter
Get-Help -Name Get-Help #Returns the name of the name of the cmdlet you want to learn about
Get-Help Get-FileHash -Examples #Returns the Examples section of the help page 
Get-Help -Name Get-FileHash #
help Get-FileHash
help Get-FileHash -Examples
Get-Process -Name cmd | Get-Member
Get-Command -ParameterType Process
Get-Process -Name msedge | Get-Member | Select-Object Name, MemberType
Get-Process audiodg
Get-Process -Name Widgets | Get-Member
Get-Process | Get-Member
Get-Process CPU | Format-List -Property *
Get-Process CPU | Get-Member -Name C*
Get-Process CPU | Select-Object -Property Id, Name, CPU
Get-Process | Sort-Object -Descending -Property Name
Get-Process | Sort-Object -Descending -Property Name, CPU
Get-Process winlogon | Sort-Object -Property @{Expression = "Name"; Descending = $True}, @{Expression = "CPU"; Descending = $False}
pwsh
Get-Process | Where-Object CPU -gt 2 | Sort-Object CPU -Descending | Select-Object -First 3
Get-Process | Select-Object Name | Where-Object Name -eq msedge
Get-Process | Where-Object Name -eq msedge | Select-Object Name
Get-Process -Name name-of-process | Select-Object Name
Get-Process cmd | Select-Object Name, CPU | Get-Member
Get-Process Nahimic3 | Format-Table Name,CPU | Get-Member
Get-Process backgroundTaskHost | Select-Object Name, Cpu
Get-Process conhost | Format-Table Name,CPU | Select-Object Name, CPU
"a string" | Get-Member
"a string" | Get-Member | Format-List
$name = Read-Host -Prompt "Please enter your name"
Write-Output "Congratulation $name! You have written your first code with powershell!"
$date = Get-Date
Write-Output "Today's date is $date." "Today is the day $name began a Powershell journey"
Write-Output "Today is the day $name began a Powershell journey."
$date = Read-Host "What is today's date"
$name = Read-Host "Please enter your name"
Write-Output "Today's date is $date."
Write-Output "Today is the day $name began a PowerShell programming journey."