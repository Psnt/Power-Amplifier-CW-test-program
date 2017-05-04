clear all
%% E3632A
DCPowerSupplyObject = visa('agilent','ASRL3::INSTR');
fopen(DCPowerSupplyObject);
fprintf(DCPowerSupplyObject,'SYSTem:LOCal');
pause(0.1);
fprintf(DCPowerSupplyObject,'*RCL 1');
pause(0.1);
fprintf(DCPowerSupplyObject,'SYSTem:REMote');
pause(0.1);


%fprintf(DCPowerSupplyObject,'VOLT:PROT 30');
%fprintf(DCPowerSupplyObject,'VOLT:PROT:STAT ON');

fprintf(DCPowerSupplyObject,'OUTP ON');
pause(0.1);
pause(1);
a = query(DCPowerSupplyObject,'MEASure:CURRent?');
pause(0.1);

fprintf(DCPowerSupplyObject,'OUTP OFF');
pause(0.1);
fprintf(DCPowerSupplyObject,'SYSTem:LOCal');
pause(0.1);
fclose(DCPowerSupplyObject);
delete(DCPowerSupplyObject)
clear DCPowerSupplyObject