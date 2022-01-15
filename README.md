# Hist Linux Utilities
## Installation:
Clone the repo:

    git clone https://github.com/sergeyhist/hist-linux-utilities.git
    cd hist-linux-utilities

Run installer script:

    sh hlu-installer.sh

## Usage:
Input this command in terminal:

    histutilities

## Features:
+ Launcher Controller:   
   - Create, edit and run launchers for wine and linux native apps. Launchers support various settings:   
     - Select prefix   
     - Select wine/proton version   
     - Enabe gamemode, mangohud, vkbasalt    
     - Enabe and setup libstrangle
     - FSR options
     - Dxvk options   
     - Wine options
     - Proton options
     - Nvidia options
     - AMD options
+ Wine Helper:   
   - Prefix commands (winecfg, control, regedit, etc.)   
   - Winetricks   
   - Install dxvk, vkd3d, mf, mf-cab for selected prefix
   - Add, create and remove prefixes   
   - Add and remove wine runners   
+ Steam Helper:     
   - Change launch options for game (Gamemode, FSR, mangohud, etc.)
   - Wine commands for game prefix (winecfg, explorer, etc.)  
   - Winetricks for game prefix   
   - Reset game prefix   
   - Install MF, MF-Cab, mfplat.dll
+ Packages Installer ([Packages](https://github.com/sergeyhist/hist-linux-utilities/tree/main/source/Installers))  
+ Systemd Controller
    - Service's status (active, inactive, etc.)
    - Control commands (start, stop, restart, status)
