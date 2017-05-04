fprintf(DCPowerSupplyObject,'OUTP OFF');
pause(0.1);
fprintf(DCPowerSupplyObject,'SYSTem:LOCal');
pause(0.1);
fclose(DCPowerSupplyObject);
delete(DCPowerSupplyObject)
clear DCPowerSupplyObject