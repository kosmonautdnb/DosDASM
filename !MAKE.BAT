@echo off
@echo ..needs openwatcom..
@echo system dos4g > !link.lnk
@echo option STack=32000 >> !link.lnk
del *.err
call !cc.bat ERRORS.C ERRORS.OBJ
call !cc.bat UTIL.C UTIL.OBJ
call !cc.bat OPS.C OPS.OBJ
call !cc.bat SYMBOLS.C SYMBOLS.OBJ
call !cc.bat GLOBALS.C GLOBALS.OBJ
call !cc.bat EXP.C EXP.OBJ
call !cc.bat MNE6303.C MNE6303.OBJ
call !cc.bat MNE6502.C MNE6502.OBJ
call !cc.bat MNE6811.C MNE6811.OBJ
call !cc.bat MNE68705.C MNE68705.OBJ
call !cc.bat MNE68908.C MNE68908.OBJ
call !cc.bat MNEF8.C MNEF8.OBJ
call !cc.bat MAIN.C MAIN.OBJ
call wlink.exe @!link.lnk name dasm.exe
del *.obj
