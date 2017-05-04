%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FOR  single PA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Initial_parm_singlePA;
%% N5182A Initial
N5182A_Initial;

%% n9030a Initial

N9030A_Initial;
%% Initial Power Supply
E3632A_Initial;
%% SWEEP Power Amplifier
pause(0.2);
fprintf(DCPowerSupplyObject,'OUTP ON');
pause(0.2);

Sweep_points_withpower;

pause(0.2);
fprintf(DCPowerSupplyObject,'OUTP OFF');
pause(0.2);

for b = 1:freq_sweep_num;
Gain(:,b) =Power_out_dbm(:,b) - Power_in_dbm;
end

for d = 1:freq_sweep_num;
   Gain_cal(:,d) = Gain(:,d) - Gain_ext_avr(1,d);
   Power_out_dbm_cal(:,d) = Power_out_dbm(:,d) - Gain_ext_avr(1,d);
end

    Gain_PA = Gain_cal - Gain_cal_pramp;
    Power_DC = Current_D .*28;
    Power_out_cal = 10 .^((Power_out_dbm_cal-30)./10);
    Power_in_cal = 10 .^((Power_out_dbm_cal_pramp-30)./10);
    PAE = 100*(Power_out_cal -Power_in_cal)./Power_DC;
    DE=100*Power_out_cal ./Power_DC;
    
    
    

%% Close DC_Power
E3632A_close;
%% Close SG
N5182A_close;

%% Close SA

N9030A_close;