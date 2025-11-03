@echo .CC "%1" : "%2"
wcl386.exe /mf -W0 -c -zp=1 -zq -ISRC -I. %1 -fo%2
@echo file %2 >> !link.lnk