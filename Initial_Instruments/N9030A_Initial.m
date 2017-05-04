%% n9030a Initial
% Specify the IP address of the signal analyzer
%addressMXA = '169.254.222.26';
addressMXA = '192.168.0.100';  


%% Connect to the Instrument
% Before you connect to the instrument:
% 
% * Set up instrument connectivity using a TCP/IP connection.
% * Adjust the input buffer size so that it can hold the data the instrument returns.
% * Set the timeout to allow sufficient time for the measurement and transfer of data.
% * Connect to the instrument.

SignalAnalyzerObject = tcpip(addressMXA, 5025);
% SignalAnalyzerObject = visa('agilent','TCPIP0::A-N9030A-30917::5025::SOCKET');
SignalAnalyzerObject.InputBufferSize = 30e6;
SignalAnalyzerObject.Timeout = 20;
fopen(SignalAnalyzerObject);

%% Query Instrument Identification Information
% Reset the instrument to a known state using the  appropriate SCPI command. 
% Query the instrument identity to make sure we are connected to the right 
% instrument. 

fprintf(SignalAnalyzerObject, '*RST');
instrumentInfo = query(SignalAnalyzerObject, '*IDN?');
disp(['Instrument identification information: ' instrumentInfo]);

%% Switch the Instrument Back to Spectrum Analyzer Mode 
% Switch the instrument to spectrum analyzer mode and compare the spectrum 
% view generated in MATLAB with the view on the Signal Analyzer. 
% Use additional SCPI commands are used to configure the instrument 
% measurement and display settings.

% Switch back to the spectrum analyzer view
fprintf(SignalAnalyzerObject,':INSTrument:SELect SA');


% Set mechanical attenuation level
fprintf(SignalAnalyzerObject,[':SENSe:POWer:RF:ATTenuation ' num2str(mechAttenuation_SA)]);

% Set RELF
fprintf(SignalAnalyzerObject,['DISP:WIND:TRAC:Y:RLEV ',num2str(Rlev),'dBm']);

%fprintf(SignalAnalyzerObject,['DISP:WIND:TRAC:Y:RLEV 5dBm']);

% Turn off electrical attenuation. 
fprintf(SignalAnalyzerObject,':SENSe:POWer:RF:EATTenuation:STATe OFF');


% Set the center frequency, RBW and VBW and trigger
fprintf(SignalAnalyzerObject,[':SENSe:FREQuency:CENTer ' num2str(centerFrequency_SA)]);
fprintf(SignalAnalyzerObject,[':SENSe:FREQuency:STARt ' num2str(startFrequency_SA)]);
fprintf(SignalAnalyzerObject,[':SENSe:FREQuency:STOP ' num2str(stopFrequency_SA)]);
fprintf(SignalAnalyzerObject,[':SENSe:BANDwidth:RESolution ' num2str(resolutionBandwidth_SA)]);
fprintf(SignalAnalyzerObject,[':SENSe:BANDwidth:VIDeo ' num2str(videoBandwidth_SA)]);

%set align off
fprintf(SignalAnalyzerObject,':CAL:AUTO OFF'); 

% Continuous measurement
fprintf(SignalAnalyzerObject,':INIT:CONT ON'); 

% Trigger
fprintf(SignalAnalyzerObject,'*TRG');

%Marker

fprintf(SignalAnalyzerObject,':CALC:MARK1:MODE POS');
fprintf(SignalAnalyzerObject,':CALC:MARK1:X 2.55e9');

%start align
%fprintf(SignalAnalyzerObject,':CAL'); 