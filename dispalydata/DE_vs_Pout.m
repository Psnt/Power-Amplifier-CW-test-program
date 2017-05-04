%%
% for n=1:9
%     figure(n);
%     plot(
%     Power_out_dbm_cal(:,n)  , DE(:,n)
%     );
% end

    plot(    Power_out_dbm_cal(:,1)  , DE(:,1),'g',    Power_out_dbm_cal(:,3)  , DE(:,3),'b--o' ,   Power_out_dbm_cal(:,5)  , DE(:,5),'c'   );