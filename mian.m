clear all

Initial_parm_atten;	%Do NOT pass-away

Calculate_atten.m; 	%Select to use or not

% Add break point here

Initial_parm_preamp;	%Do not pass-away

Calculate_preamp;
% Add break point here

%%
%%%%%%%%%%%%%%%%%%%%%%%%
Initial_parm_singlePA;

Single_Branch_PA;

%%%%%%%%%%%%%%%%%%%%%%

%%
%%%%%%%%%%%%%%%%%%%%%%
% If not use,pass-away
Initial_parm_dualPA;

Dual_Brahch_PA;
%%%%%%%%%%%%%%%%%%%%%%%%




displaydata;

LG3dBdata;