Unicode true
Name "QPuter"
OutFile "build\QPuterSetup.exe"
InstallDir "$PROGRAMFILES64\QPuter"
RequestExecutionLevel admin
Icon "application\assets\icons\qFlipper-purple.ico"
SetCompressor /solid lzma

Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

Section "Install"
  SetOutPath "$INSTDIR"
  File /r "build\QPuter\*"
  WriteUninstaller "$INSTDIR\uninstall.exe"
  CreateShortCut "$DESKTOP\QPuter.lnk" "$INSTDIR\QPuter.exe" "" "$INSTDIR\QPuter.exe" 0
  CreateShortCut "$SMPROGRAMS\QPuter.lnk" "$INSTDIR\QPuter.exe" "" "$INSTDIR\QPuter.exe" 0
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\QPuter" "DisplayName" "QPuter"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\QPuter" "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\QPuter" "DisplayIcon" "$\"$INSTDIR\QPuter.exe$\""
SectionEnd

Section "Uninstall"
  Delete "$DESKTOP\QPuter.lnk"
  Delete "$SMPROGRAMS\QPuter.lnk"
  RMDir /r "$INSTDIR"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\QPuter"
SectionEnd
