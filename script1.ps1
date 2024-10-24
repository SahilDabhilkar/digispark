# Clear the screen and get the username of the Windows 11 system
Clear-Host

# Fetch the current username
$currentUsername = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
Write-Host "Your System Will Be Hacked In 3 Sec By Anonymous User" -ForegroundColor Green

# Pretend the system is processing
Write-Host "Processing..."
Start-Sleep -Seconds 2

Clear-Host

# Loading Animation from 1% to 100% with background and font color change
$barLength = 80 # Total length of the loading bar
for ($i = 1; $i -le 100; $i++) {
    # Calculate the number of '#' characters
    $numHashes = [math]::floor($i * ($barLength / 100)) # Scale to bar length
    $loadingBar = ("#" * $numHashes) + (" " * ($barLength - $numHashes)) # Build loading bar
    Write-Host "`r[$loadingBar] $i% Loading..." -NoNewline -ForegroundColor Yellow -BackgroundColor DarkBlue
    Start-Sleep -Milliseconds 50 # Adjust the speed as needed
}

# Final message after the 'animation' reaches 100%
Start-Sleep -Seconds 1

# Display the current username in a big text format
$bigUsername = @"
  ___  _ _  _            _         
 | _ \| | || |__ _ _ _ _| |_ ___ _ _ 
 |  _/| | __ / _` | '_| |  _/ -_) '_|
 |_|  |_|\__|\__,_|_| |_|\__\___|_|  
"@
Write-Host "`n$bigUsername" -ForegroundColor White -BackgroundColor Red

# Display the final hacked message
$hackedMessage = @"
                     System Hacked by Anonymous User                            
"@

# Change background and font color for the final message
Write-Host "`n$hackedMessage" -ForegroundColor White -BackgroundColor Red

# Prevent the window from closing immediately; wait for 5000 milliseconds (5 seconds)
Start-Sleep -Milliseconds 5000
