# Print all active processes ordered by highest CPU time consumption
Get-Process | Sort-Object CPU -Descending | Format-Table Name, Id, CPU -AutoSize

# Print all active processes ordered by highest Process Identification Number (PID)
Get-Process | Sort-Object Id -Descending | Format-Table Name, Id -AutoSize

# Print the top five active processes ordered by highest Working Set (WS(K))
Get-Process | Sort-Object WS -Descending | Select-Object -First 5 | Format-Table Name, Id, WS -AutoSize

# Start a browser process and open a specific URL
Start-Process "chrome" -ArgumentList "https://owasp.org/www-project-top-ten/" -PassThru

# Start Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad" -PassThru
}

# Close all instances of Notepad
Get-Process "notepad" | ForEach-Object { Stop-Process -Id $_.Id -Force }

# Kill a process by its Process Identification Number
$processToKill = Get-Process -Name "chrome" | Sort-Object CPU -Descending | Select-Object -First 1
Stop-Process -Id $processToKill.Id -Force
