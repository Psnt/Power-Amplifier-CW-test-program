%% E3632A for Peak AMP
DCPowerSupplyObject_2 = visa('agilent','ASRL5::INSTR');
fopen(DCPowerSupplyObject_2);
fprintf(DCPowerSupplyObject_2,'SYSTem:LOCal');
pause(0.1);
fprintf(DCPowerSupplyObject_2,'*RCL 1');
pause(0.1);
fprintf(DCPowerSupplyObject_2,'SYSTem:REMote');
pause(0.1);
fprintf(DCPowerSupplyObject_2,'OUTP OFF');
pause(0.1);