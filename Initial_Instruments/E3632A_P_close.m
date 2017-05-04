fprintf(DCPowerSupplyObject_2,'OUTP OFF');
pause(0.1);
fprintf(DCPowerSupplyObject_2,'SYSTem:LOCal');
pause(0.1);
fclose(DCPowerSupplyObject_2);
delete(DCPowerSupplyObject_2)
clear DCPowerSupplyObject_2