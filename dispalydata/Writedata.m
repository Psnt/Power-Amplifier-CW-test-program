%%Write data to Excel
filename = 'PAdata.xlsx';
warning('off','MATLAB:xlswrite:AddSheet');
%Biaoti =['���棨dB��' 'Ч��(%)' '������ʣ�dBm��' '���빦�ʣ�dBm��' 'ֱ������(W)'];
for a = 1:freq_sweep_num;
    
Freqwrite = (freq_initial+freq_step*(a-1))/1e9;

%xlswrite(filename,'���棨dB��', a , 'A1');    
xlswrite(filename,Gain_PA(:,a), a , 'A2');

%xlswrite(filename,'Ч�ʣ�%��', a , 'B1');   
xlswrite(filename,PAE(:,a), a ,'B2');

%xlswrite(filename,'������ʣ�dBm��', a , 'C1');   
xlswrite(filename,Power_out_dbm_cal(:,a), a ,'C2');

%xlswrite(filename,'���빦�ʣ�dBm��', a , 'D1');   
xlswrite(filename,Power_out_dbm_cal_pramp(:,a), a ,'D2');

%xlswrite(filename,'ֱ�����ģ�W��', a , 'E1');   
xlswrite(filename,Power_DC(:,a), a ,'E2');

%xlswrite(filename,'Ƶ�ʣ�GHz��', a , 'G1');   
xlswrite(filename,Freqwrite , a ,'G2');
end