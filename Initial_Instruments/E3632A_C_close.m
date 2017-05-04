fprintf(DCPowerSupplyObject_1,'OUTP OFF');
pause(0.1);
fprintf(DCPowerSupplyObject_1,'SYSTem:LOCal');
pause(0.1);
fclose(DCPowerSupplyObject_1);
delete(DCPowerSupplyObject_1)
clear DCPowerSupplyObject_1