%% E3632A
DCPowerSupplyObject = visa('agilent','ASRL6::INSTR');
fopen(DCPowerSupplyObject);
fprintf(DCPowerSupplyObject,'SYSTem:LOCal');
pause(0.1);
fprintf(DCPowerSupplyObject,'*RCL 1');
pause(0.1);
fprintf(DCPowerSupplyObject,'SYSTem:REMote');
pause(0.1);
fprintf(DCPowerSupplyObject,'OUTP OFF');
pause(0.1);