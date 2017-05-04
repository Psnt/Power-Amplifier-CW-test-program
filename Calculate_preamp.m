%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FOR Pre AMP
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Parameters Initial
%Initial_parm_preamp;	%Do not pass-away
%% N5182A Initial
N5182A_Initial;

%% n9030a Initial

N9030A_Initial;

%% SWEEP Pre Amplifier

pause(0.2);
Sweep_points;


pause(0.2);

for b = 1:freq_sweep_num;
Gain(:,b) =Power_out_dbm(:,b) - Power_in_dbm;
end

for d = 1:freq_sweep_num;
   Gain_cal_pramp(:,d) = Gain(:,d) - Gain_ext_avr(1,d);
   Power_out_dbm_cal_pramp(:,d) = Power_out_dbm(:,d) - Gain_ext_avr(1,d);
end


%% Close SG
N5182A_close;

%% Close SA

N9030A_close;