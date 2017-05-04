 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FOR EXT atten
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear all
%% Parameters Initial
%Initial_parm_atten;	%Do NOT pass-away
%% n9030a Initial

N9030A_Initial;
%% N5182A Initial
N5182A_Initial;


%% SWEEP EXT Gain

Sweep_points;


for b = 1:freq_sweep_num;
Gain(:,b) =Power_out_dbm(:,b) - Power_in_dbm;
end
for c = 1:power_sweep_num;
   Gain_ext_avr = Gain(c,:)+ Gain_ext_avr;
end
Gain_ext_avr = Gain_ext_avr ./power_sweep_num;
EXT_Gain = Gain_ext_avr(1,end);
%% Close SG
N5182A_close;

%% Close SA

N9030A_close;