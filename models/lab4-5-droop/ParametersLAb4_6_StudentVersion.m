clear all
clc


% abc to alpha/Beta Transformation (Concordia)

T32=sqrt(2/3)*[   1      0;
                -0.5  sqrt(3)/2;
                -0.5 -sqrt(3)/2];
% Switching parameters
Fs=15e3;
Ts=1/Fs;
% Inverter model--  2° order filter
Ksi=1;     % damping
wne=500;   % radian frequency

% line impedances
R1=0.2;
L1=1e-3;
R2=0.1;
L2=5e-3;

% PCC 
Cpcc=20e-6;
    % Resistive load
    R=10;
    % CPL filter
    Lf=0.4e-3;
    Cf=20e-6;
    Rf=0.1;

% Rating of DGs

P1_rated=3000;
Q1_rated=1500;
f1_rated=60;
w1_rated=2*pi*f1_rated;
V1_rated=110;
S1_rated= 1*sqrt(P1_rated^2+Q1_rated^2);

P2_rated=4000;
Q2_rated=1500/2;
f2_rated=60;
w2_rated=2*pi*f2_rated;
V2_rated=110;
S2_rated= 1*sqrt(P2_rated^2+Q2_rated^2);


% Droop parameters
delta_w=10;
delta_V=1;

m1=delta_w/P1_rated;
n1=delta_V/Q1_rated;

m2=delta_w/P2_rated;
n2=delta_V/Q2_rated;

    % Time Constant of active and reactive Power filterings
    Tf=0.1; 
    % Modified Droop
    Ke1=10;
    Ke2=10;





X1=w1_rated*L1;
X2=w2_rated*L2;
Xv1=w1_rated*0e-3;
Xv2=w2_rated*0e-3;

% Consensus

Lcom=[1 -1;-1 1];
% frequency restoration parameters
w_secondary=5; % bandwidth secondary control
ksi_secondary=1;
Kw1=w_secondary;
Kw2=1;
%voltage restoration parameters
fv=2*ksi_secondary*w_secondary;
W=[1 0; 0 1];    %  weight coefficient


%% Secondry control
kiv=w_secondary^2;
kpv=10;



%% Primary control
Ki=4.5e-4;
