

power_dbm_initial = -30;





%% For  Pre AMP SWEEP
power_sweep_num = 50;

power_step = 0.5;

Power_in_dbm =(power_dbm_initial:power_step:power_step*(power_sweep_num-1)+power_dbm_initial)';

Power_out_dbm = zeros(power_sweep_num,freq_sweep_num);

Gain = zeros(power_sweep_num,freq_sweep_num);




%% For  Pre AMP Cal
Gain_cal_pramp = zeros(power_sweep_num,freq_sweep_num);

Power_out_dbm_cal_pramp = zeros(power_sweep_num,freq_sweep_num);
%% For Plot
X =freq_initial:freq_step:freq_step*(freq_sweep_num-1)+freq_initial;

Y =power_dbm_initial:power_step:power_step*(power_sweep_num-1)+power_dbm_initial;
