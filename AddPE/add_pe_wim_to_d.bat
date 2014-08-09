REM http://technet.microsoft.com/en-us/magazine/2008.02.desktopfiles.aspx

SET TO_DRIVE=D:
SET IMAGE_NAME=winpe_drivers_tools.wim

echo adding WinPE stuff to bootmgr...
if not exist %TO_DRIVE%\boot md %TO_DRIVE%\boot
copy BOOT.SDI %TO_DRIVE%\BOOT\ 
copy %IMAGE_NAME% %TO_DRIVE%\BOOT\winpe.wim
paue

bcdedit /create {ramdiskoptions} /d "Boot Windows PE"
bcdedit /set {ramdiskoptions} ramdisksdidevice partition=%TO_DRIVE%
bcdedit /set {ramdiskoptions} ramdisksdipath \boot\boot.sdi

for /f "usebackq tokens=3" %%f in (`bcdedit /create /d "New Windows PE" /application OSLOADER`) do SET WIN7_GUID=%%f
  echo Het opgehaalde guid is: %WIN7_GUID%
  bcdedit /set %WIN7_GUID% device ramdisk=[%TO_DRIVE%]\boot\winpe.wim,{ramdiskoptions}
  bcdedit /set %WIN7_GUID% path \windows\system32\winload.exe
  bcdedit /set %WIN7_GUID% osdevice ramdisk=[%TO_DRIVE%]\boot\winpe.wim,{ramdiskoptions}
  bcdedit /set %WIN7_GUID% systemroot \windows
  bcdedit /set %WIN7_GUID% winpe yes
  bcdedit /set %WIN7_GUID% detecthal yes
  bcdedit /displayorder %WIN7_GUID% /addlast 
  bcdedit /timeout 30

  REM pause
REM shutdown -r -t 0
