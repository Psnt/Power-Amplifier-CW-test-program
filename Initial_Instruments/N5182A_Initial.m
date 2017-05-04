%%N5182A Initial
%addressSG = '169.254.222.10'; 
addressSG= '192.168.0.103';  
SignalGeneratorObject = tcpip(addressSG, 5025);

% SignalGeneratorObject = visa('agilent','TCPIP0::A-N5182A-60091.local::inst0::INSTR');
%SignalGeneratorObject = visa('agilent','	TCPIP0::::INSTR');

% Open connection to the instrument
fopen(SignalGeneratorObject);
fprintf(SignalGeneratorObject,':OUTPut:STATe OFF');
fprintf(SignalGeneratorObject,':SOURce:RADio:ARB:STATe OFF');
fprintf(SignalGeneratorObject,':OUTPut:MODulation:STATe OFF');

% Set the instrument source freq
fprintf(SignalGeneratorObject,['SOURce:FREQuency ',num2str(freq_initial)]);

% Set the source power
fprintf(SignalGeneratorObject,['POWer ',num2str(power_dbm_initial)]);