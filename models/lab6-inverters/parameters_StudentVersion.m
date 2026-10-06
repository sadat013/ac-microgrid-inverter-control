clear
clc

%Transformation 
T32=sqrt(2/3)*[1 0; -1/2 sqrt(3)/2; -1/2 -sqrt(3)/2];

% Switching 
Fs = 20e3;
Ts = 1/Fs;


%% MicroGrid Parameters
L_Filter = 1e-3;
rL_filter= 0.1;
C_Filter = 300e-6;
% line impedances
R1=0.2;
L1=1e-3;
% DC Link
Vdc = 800;
% Reference
Fref = 50;
VrmsRef = 40;

%% Voltage and current controls 
zeta = 1/sqrt(2);
% Idq
    WnIdq       = 12000;%?????????
    wnFiltreIdq = 12000;%2*pi*Fs
    kFilterIdq  = wnFiltreIdq/WnIdq;
% Vdq
    WnVdq       = 1200;%10x slower than inned current loop
    wnFiltreVdq = 1200;%?????????
    kFilterVdq  = wnFiltreVdq/WnVdq;

% ========PLL======================
wrated = 2*pi*60;
wcpll=1; % Desired BanWidth of the PLL
s=tf('s')
Kpll2=1;
T1=10/wcpll;
T2=1/(10*wcpll);
% FT2=Kpll2*(1+T1*s)/((1+T2*s)*1/s^2);
FT2=Kpll2/s^2
margin(FT2)
legend('FTBO PLL2')


Vrms_Grid = 110;
