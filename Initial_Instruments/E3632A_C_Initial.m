%% E3632A
DCPowerSupplyObject_1 = visa('agilent','ASRL3::INSTR');
fopen(DCPowerSupplyObject_1);
fprintf(DCPowerSupplyObject_1,'SYSTem:LOCal');
pause(0.1);
fprintf(DCPowerSupplyObject_1,'*RCL 1');
pause(0.1);
fprintf(DCPowerSupplyObject_1,'SYSTem:REMote');
pause(0.1);
fprintf(DCPowerSupplyObject_1,'OUTP OFF');
pause(0.1);