; Startup + icloud-findmy:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Find My" '"$INSTDIR\iCloud Find My.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-findmy" "" "URL:iCloud Find My"
  WriteRegStr HKCU "Software\Classes\icloud-findmy" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-findmy\shell\open\command" "" '"$INSTDIR\iCloud Find My.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Find My"
  DeleteRegKey HKCU "Software\Classes\icloud-findmy"
!macroend
