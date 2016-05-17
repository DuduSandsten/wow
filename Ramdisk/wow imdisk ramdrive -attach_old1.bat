::nirklars.wordpress.com
if exist R:\wow.exe goto ramdrivealreadymounted
imdisk -a -s 6G -m r: -p "/fs:ntfs /q /y /v:RamDrive"
echo f | copy *.dll r:\*.dll
echo f | copy *.exe r:\*.exe
echo f | copy *.wtf r:\*.wtf
echo f | xcopy /f /y /e Documentation r:\Documentation\
echo f | xcopy /f /y /e Sound r:\Sound\
echo f | xcopy /f /y /e WDB r:\WDB\
::echo f | xcopy /f /y /e Interface r:\Interface\
echo f | xcopy /f /y /e Data r:\Data\
mklink /d "R:\Interface" "%CD%\Interface"
mklink /d "R:\WTF" "%CD%\WTF"
mklink /d "R:\Screenshots" "%CD%\Screenshots"
:ramdrivealreadymounted
start R:\wow.exe
if exist hdd-prevent-powersaving-spindown.vbs goto hddpowersavingprevent
exit
:hddpowersavingprevent
start hdd-prevent-powersaving-spindown.vbs