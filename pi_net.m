%% pi_net.m
% Calculate the required resistor values for an unbalanced pi attenuator
% given loss and impedance.
%
% Written on 2022-06-06 by Isaac Schofer for SilverSat Ltd.
% (https://silversat.org) using equations from Wikipedia
% (https://en.wikipedia.org/wiki/Attenuator_(electronics)#Symmetric_pi_pad_resistor_calculation)

%% Define inputs
loss = 1;               % Attenuator loss, expressed in positive dB
Z = 50;                 % Impedance, in ohms

% Convert attenuation to a linear coefficient A
A = 10.^((-1*loss)/20);

%% Calculate resistor values (see associated KiCad schematic
% pi_net.kicad_sch)

R43 = Z.*(1.+A)./(1.-A)          % Calculate R43 resistance
R44 =(2.*R43)./(((R43./Z).^2)-1) % Calculate R44 resistance
R45 = R43                        % R45 resistance is equal to R43