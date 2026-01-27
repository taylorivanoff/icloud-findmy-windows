!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Find My" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-findmy" "" "URL:iCloud Find My"
  WriteRegStr HKCU "Software\Classes\icloud-findmy" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-findmy\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Find My"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-findmy"
!macroend
