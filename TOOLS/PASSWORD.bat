cls
@ECHO OFF
title Your Private Folder
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST "Private [Do not rename]" goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice...
goto CONFIRM
:LOCK
ren "Private [Do not rename]" "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked!
goto End
:UNLOCK
echo Enter password to unlock folder:
set/p "pass=>"


if NOT %pass%== Ketuxsiaistnice goto FAIL


attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" "Private [Do not rename]"
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md "Private [Do not rename]"
echo Folder created successfully!
goto End
:End
timeout /t 5