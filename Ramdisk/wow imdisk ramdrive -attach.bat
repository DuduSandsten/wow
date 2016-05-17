::nirklars.wordpress.com
if exist ramdrivelog.txt del ramdrivelog.txt
if exist R:\wow.exe goto ramdrivealreadymounted
imdisk -a -s 6G -m r: -p "/fs:ntfs /q /y /v:RamDrive" >> ramdrivelog.txt
echo f | copy *.dll r:\*.dll >> ramdrivelog.txt
echo f | copy *.exe r:\*.exe >> ramdrivelog.txt
echo f | copy *.wtf r:\*.wtf >> ramdrivelog.txt
echo f | xcopy /f /y /e Documentation r:\Documentation\ >> ramdrivelog.txt
echo f | xcopy /f /y /e Sound r:\Sound\ >> ramdrivelog.txt
echo f | xcopy /f /y /e WDB r:\WDB\ >> ramdrivelog.txt
::echo f | xcopy /f /y /e Interface r:\Interface\ > ramdrivelog.txt
echo f | xcopy /f /y /e Data r:\Data\ >> ramdrivelog.txt
mklink /d "R:\Interface" "%CD%\Interface" >> ramdrivelog.txt
mklink /d "R:\WTF" "%CD%\WTF" >> ramdrivelog.txt
mklink /d "R:\Screenshots" "%CD%\Screenshots" >> ramdrivelog.txt
:ramdrivealreadymounted
start R:\wow.exe
if exist hdd-prevent-powersaving-spindown.vbs goto hddpowersavingprevent
exit
:hddpowersavingprevent
start hdd-prevent-powersaving-spindown.vbs >> ramdrivelog.txt