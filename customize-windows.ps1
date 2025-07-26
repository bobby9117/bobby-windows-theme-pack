# Enable Dark Mode for apps and system
New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -PropertyType DWord -Force
New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -PropertyType DWord -Force

# Install TranslucentTB
winget install --id=TranslucentTB.TranslucentTB -e

# Launch Rainmeter if available
Start-Process "C:\Program Files\Rainmeter\Rainmeter.exe" -ArgumentList "!LoadLayout Ageo"
