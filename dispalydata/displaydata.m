%% Plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
surf(X,Power_out_dbm_cal_pramp,Power_out_dbm_cal);
xlabel('Ƶ��');

% ���� ylabel
ylabel('���빦��(dBm)');

% ���� zlabel
zlabel('�������(dBm)');

% ���� title
title('���빦��(dBm) vs �������(dBm)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
surf(X,Power_out_dbm_cal_pramp,PAE);
xlabel('Ƶ��');

% ���� ylabel
ylabel('���빦��(dBm)');

% ���� zlabel
zlabel('PAE');

% ���� title
title('PAE vs Input');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);
surf(X,Power_out_dbm_cal,DE);
xlabel('Ƶ��');

% ���� ylabel
ylabel('�������(dBm)');

% ���� zlabel
zlabel('PAE');

% ���� title
title('PAE vs Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(4);
% surf(X,Power_out_dbm_cal,Gain_PA);
% xlabel('Ƶ��');
% 
% % ���� ylabel
% ylabel('�������(dBm)');
% 
% % ���� zlabel
% zlabel('Gain');
% 
% % ���� title
% title('Gain vs Output');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(5);
% surf(X,Power_out_dbm_cal_pramp,Gain_PA);
% xlabel('Ƶ��');
% 
% % ���� ylabel
% ylabel('���빦��(dBm)');
% 
% % ���� zlabel
% zlabel('Gain');
% 
% % ���� title
% title('Gain vs Input');