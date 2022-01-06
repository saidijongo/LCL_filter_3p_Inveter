% LCL Filter parameter Values 연세대 전전

Vdc= 800; %DC-link voltage
P = 100000; % Inverter Active Power
E = 400; %Grid line to line voltage
f = 50; %Grid frequency
w = 2*pi*f;
fsw = 10000; %Switching frequency
wsw = 2*pi*fsw;
% Base values
Zb = (E^2)/P
Cb = 1/(w*Zb)
%Filter parameters
delta_Ilmax=0.1*((P*sqrt(2))/E);
Linv=Vdc/(16*fsw*delta_Ilmax) %Inverter-side inductance
x = 0.05;
Cf = x*Cb %Filter capacitor
%Factor'r' between Linv and Lg
r = 0.6;
Lg = r*Linv % Grid-side inductance
wres = sqrt((Linv+Lg)/(Linv*Lg*Cf)) % resonance omega wres
fres=wres/(2*pi) %Filter's resonance frequency
Rd = 1/(3*wres*Cf) %Damping resistance