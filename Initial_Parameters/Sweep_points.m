N5182AOUT_ON;

pause(0.5);
fprintf(SignalAnalyzerObject,':CALC:MARK1:MAX');
pause(0.5);

for b = 1:freq_sweep_num;
    
    
    fprintf(SignalGeneratorObject,['SOURce:FREQuency ',num2str((b-1)*freq_step + freq_initial)]);
    fprintf(SignalGeneratorObject,['POWer ',num2str(power_dbm_initial)]);
    fprintf(SignalAnalyzerObject,[':SENSe:FREQuency:CENTer ' num2str((b-1)*freq_step + freq_initial)]);
    pause(0.2);
    fprintf(SignalAnalyzerObject,':CALC:MARK1:MAX');
        
    for c = 1:power_sweep_num;
        % sweep source
        fprintf(SignalGeneratorObject,['POWer ',num2str((c-1)*power_step + power_dbm_initial)]);
        pause(0.2);
        
        % auto turn REF
        if((c>1)&&(Power_out_dbm(c-1,b) <= (Rlev-20)))
          
            Rlev = Rlev - 10;
            fprintf(SignalAnalyzerObject,['DISP:WIND:TRAC:Y:RLEV ',num2str(Rlev),'dBm']);
            end
        
        if((c>1)&&(Power_out_dbm(c-1,b) >= (Rlev-10)))
            Rlev = Rlev + 10;
            fprintf(SignalAnalyzerObject,['DISP:WIND:TRAC:Y:RLEV ',num2str(Rlev),'dBm']);
            end
          
         %²ÉÑù
        Power_out_dbm(c,b) = str2num(query(SignalAnalyzerObject,':CALC:MARK1:Y?'));
                
        %Freq_out_dbm(c,b) = str2double(query(SignalAnalyzerObject,':CALC:MARK1:X?'));
                
    end
    
    pause(0.1);
end
N5182AOUT_OFF;