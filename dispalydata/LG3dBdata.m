%LG3dBdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
backoff =3;
Gain_pa_initial = Gain_PA( 1,:);
Gain_pa_initial =Gain_pa_initial - backoff;
B = abs(Gain_PA-repmat(Gain_pa_initial,size(Gain_PA,1),1));
% [x,index]=sort(B);
SIZEB = size(B);
%% data analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for n=1:SIZEB(1,2)
    Bx = B(:,n);
    
    Gainx=Gain_PA(:,n);
    PAEx=PAE(:,n);
    DEx=DE(:,n);
    Power_out_dbm_calx=Power_out_dbm_cal(:,n);
    
    [x,index]=sort(Bx);
    %X(1,n)=x(1);
    INDEX(1,n)=index(1);
    Gain_3dB(1,n)= Gainx(index(1));
    PAE_3dB(1,n)= PAEx(index(1));
    Power_out_dbm_cal_3dB(1,n)= Power_out_dbm_calx(index(1));
    DE_3dB(1,n)=DEx(index(1));
end
DE_3dB=DE_3dB';
PAE_3dB=PAE_3dB';
Gain_3dB=Gain_3dB';
Power_out_dbm_cal_3dB=Power_out_dbm_cal_3dB';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
plot(X,Gain_3dB);
xlabel('Frequency(Hz)');

% ���� ylabel
ylabel('Gain(dB)');


% ���� title
title('Gain @3dBCom');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PAE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
plot(X,PAE_3dB);
xlabel('Frequency(Hz)');

% ���� ylabel
ylabel('PAE(%)');

% ���� title
title('Power Add Effiency @3dBCom');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);
plot(X,Power_out_dbm_cal_3dB);
xlabel('Frequency(Hz)');

% ���� ylabel
ylabel('������ʣ�dBm��');

% ���� title
title('P3dB');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% DE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(4);
plot(X,DE_3dB);
xlabel('Frequency(Hz)');

% ���� ylabel
ylabel('DE��%��');

% ���� title
title('Drain Effiency@3dBCom');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%