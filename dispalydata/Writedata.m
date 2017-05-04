%%Write data to Excel
filename = 'PAdata.xlsx';
warning('off','MATLAB:xlswrite:AddSheet');
%Biaoti =['增益（dB）' '效率(%)' '输出功率（dBm）' '输入功率（dBm）' '直流功耗(W)'];
for a = 1:freq_sweep_num;
    
Freqwrite = (freq_initial+freq_step*(a-1))/1e9;

%xlswrite(filename,'增益（dB）', a , 'A1');    
xlswrite(filename,Gain_PA(:,a), a , 'A2');

%xlswrite(filename,'效率（%）', a , 'B1');   
xlswrite(filename,PAE(:,a), a ,'B2');

%xlswrite(filename,'输出功率（dBm）', a , 'C1');   
xlswrite(filename,Power_out_dbm_cal(:,a), a ,'C2');

%xlswrite(filename,'输入功率（dBm）', a , 'D1');   
xlswrite(filename,Power_out_dbm_cal_pramp(:,a), a ,'D2');

%xlswrite(filename,'直流功耗（W）', a , 'E1');   
xlswrite(filename,Power_DC(:,a), a ,'E2');

%xlswrite(filename,'频率（GHz）', a , 'G1');   
xlswrite(filename,Freqwrite , a ,'G2');
end