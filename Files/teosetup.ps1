if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

New-Item -Path "C:\Users\administrator\Desktop" -Name "Teohook Setup" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop" -Name "NormalGrowtopia" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop" -Name "FixedGT1" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop" -Name "FixedGT2" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop\Teohook Setup" -Name "VPN" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop\Teohook Setup" -Name "Latest GT" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop\Teohook Setup" -Name "Important" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop\Teohook Setup" -Name "DLL and Injector" -ItemType Directory
New-Item -Path "C:\Users\administrator\Desktop\Teohook Setup" -Name "Scripts" -ItemType Directory
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/teohook.dll -OutFile "C:\Users\administrator\Desktop\Teohook Setup\DLL and Injector\teohook.dll"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/Extreme-Injector.exe -OutFile "C:\Users\administrator\Desktop\Teohook Setup\DLL and Injector\Extreme-Injector.exe"
Invoke-WebRequest https://hide.me/downloads/Hide.me-Setup-3.8.3.exe -OutFile "C:\Users\administrator\Desktop\Teohook Setup\VPN\Hide.me-Setup.exe"
Invoke-WebRequest https://ubistatic-a.akamaihd.net/0098/31789/GrowtopiaInstaller.exe -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Latest GT\GrowtopiaInstaller.exe"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/items.dat -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Important\items.dat"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/crashfix.txt -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Important\crashfix.txt"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/autoharvest.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\autoharvest.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/automsg.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\automsg.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/autoclearworld.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\autoclearworld.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/dropall.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\dropall.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/fossilcount.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\fossilcount.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/Growscan.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\Growscan.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/spamv1.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\spamv1.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/spamv2.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\spamv2.lua"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/TeohookScripts/warp.lua -OutFile "C:\Users\administrator\Desktop\Teohook Setup\Scripts\warp.lua"
Invoke-WebRequest https://www.dl.dropboxusercontent.com/s/slgchsastkpj13n/Growtopia.zip?dl=0 -OutFile "C:\Users\administrator\Desktop\Growtopia.zip"
Invoke-WebRequest https://www.dl.dropboxusercontent.com/s/79kacg0wdlbrjgt/NordVPN-safon4e.exe?dl=0 -OutFile "C:\Users\administrator\Desktop\Teohook Setup\VPN\NordVPN-Setup.exe"
Invoke-WebRequest https://raw.githubusercontent.com/WolfDust/GTRDP/main/Files/Programs/nordvpn-acc.txt -OutFile "C:\Users\administrator\Desktop\Teohook Setup\VPN\nord-acc.txt"
Invoke-WebRequest https://github.com/WolfDust/GTRDP/raw/main/Files/Programs/FastConfigVPS_v5.1.exe -OutFile "C:\Users\administrator\Desktop\ChangeRDP-Password.exe"
Expand-Archive -Path C:\Users\administrator\Desktop\Growtopia.zip -DestinationPath C:\Users\administrator\Desktop\NormalGrowtopia
Expand-Archive -Path C:\Users\administrator\Desktop\Growtopia.zip -DestinationPath C:\Users\administrator\Desktop\FixedGT1
Expand-Archive -Path C:\Users\administrator\Desktop\Growtopia.zip -DestinationPath C:\Users\administrator\Desktop\FixedGT2
New-Item -ItemType SymbolicLink -Path "C:\Users\administrator\Desktop" -Name "Normal Growtopia.lnk" -Value "C:\Users\administrator\Desktop\NormalGrowtopia\Growtopia\Growtopia.exe"
Invoke-WebRequest https://github.com/WolfDust/GTRDP/raw/main/Files/Programs/Growtopia.exe -OutFile "C:\Users\administrator\Desktop\FixedGT1\Growtopia\FixedGT1.exe"
Invoke-WebRequest https://github.com/WolfDust/GTRDP/raw/main/Files/Programs/Growtopia.exe -OutFile "C:\Users\administrator\Desktop\FixedGT2\Growtopia\FixedGT2.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\administrator\Desktop" -Name "Fixed GT1.lnk" -Value "C:\Users\administrator\Desktop\FixedGT1\Growtopia\FixedGT1.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\administrator\Desktop" -Name "Fixed GT2.lnk" -Value "C:\Users\administrator\Desktop\FixedGT2\Growtopia\FixedGT2.exe"
Remove-Item C:\Users\administrator\Desktop\FixedGT1\Growtopia\Growtopia.exe -Recurse
Remove-Item C:\Users\administrator\Desktop\FixedGT2\Growtopia\Growtopia.exe -Recurse
Write-Host "Downloading finished, now you can use teohook."
