%% Plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
surf(X,Power_out_dbm_cal_pramp,Power_out_dbm_cal);
xlabel('频率');

% 创建 ylabel
ylabel('输入功率(dBm)');

% 创建 zlabel
zlabel('输出功率(dBm)');

% 创建 title
title('输入功率(dBm) vs 输出功率(dBm)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
surf(X,Power_out_dbm_cal_pramp,PAE);
xlabel('频率');

% 创建 ylabel
ylabel('输入功率(dBm)');

% 创建 zlabel
zlabel('PAE');

% 创建 title
title('PAE vs Input');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);
surf(X,Power_out_dbm_cal,DE);
xlabel('频率');

% 创建 ylabel
ylabel('输出功率(dBm)');

% 创建 zlabel
zlabel('PAE');

% 创建 title
title('PAE vs Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(4);
% surf(X,Power_out_dbm_cal,Gain_PA);
% xlabel('频率');
% 
% % 创建 ylabel
% ylabel('输出功率(dBm)');
% 
% % 创建 zlabel
% zlabel('Gain');
% 
% % 创建 title
% title('Gain vs Output');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(5);
% surf(X,Power_out_dbm_cal_pramp,Gain_PA);
% xlabel('频率');
% 
% % 创建 ylabel
% ylabel('输入功率(dBm)');
% 
% % 创建 zlabel
% zlabel('Gain');
% 
% % 创建 title
% title('Gain vs Input');