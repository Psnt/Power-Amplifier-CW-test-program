%% For SG
freq_initial = 1.8e9;

power_dbm_initial = -10;


%% For SA

% Center frequency of the modulated waveform (Hz)
centerFrequency_SA = 2.5e9;       

% Bandwidth of the signal (Hz)
%bandwidth_SA = 2.5e4;               

% Measurement time (s)
%measureTime_SA = 1e-3;             

% Mechanical attenuation in the signal analyzer(dB)
mechAttenuation_SA = 40;            

% Start frequency for Spectrum Analyzer view 
startFrequency_SA =centerFrequency_SA-1.25e4;        

% Stop frequency for Spectrum Analyzer view 
stopFrequency_SA = centerFrequency_SA+1.25e4;         

% Resolution Bandwidth for Spectrum Analyzer view
resolutionBandwidth_SA = 240;    

% Video Bandwidth for Spectrum Analyzer view
videoBandwidth_SA = 240;

Rlev = -30;

EXT_Gain = -40;
%% Freq set
freq_sweep_num = 9;

freq_step = 5e7;

%Freq_out_dbm = zeros(power_sweep_num,freq_sweep_num);
%% For  EXT atten SWEEP
power_sweep_num = 71;

power_step = 0.4;

Power_in_dbm =(power_dbm_initial:power_step:power_step*(power_sweep_num-1)+power_dbm_initial)';

Power_out_dbm = zeros(power_sweep_num,freq_sweep_num);

Gain = zeros(power_sweep_num,freq_sweep_num);



%% For  ext atten Cal
Gain_ext_avr = zeros(1,freq_sweep_num);



