%% Bit Error Rate Calcuations
% isaac-silversat, 
% Created 2023-12-11

% Tested using MATLAB® R2023b

% Test parameters:
TX_power = 2.6; % dBm, measured by a nanoVNA
attenuation_total = (20 + 10.0 + 20.7 + 60) + [4.55 6.1 7.56 9.1 10.4 ...
    11.94 13.38 14.96 15.00 16.5 18.0 19.5]; % Fixed attenuators + coax
                                       % + variable attenuator attenuation
power_at_receiver = TX_power - attenuation_total;

% Data: Bit errors per 100,000 bits:
bit_errors = ...
   [0     0     0     0     0     0     0     0     0     0;
    1     1     1     0     1     1     1     0     5     1;
    17    19    15    15    18    18    14    17    22    19;
    130   133   127   124   117   131   143   122   137   134;
    327   478   434   444   492   424   489   450   452   474;
    1170  1723  1803  1702  1796  1581  1610  1645  1730  1754;
    3693  4202  4182  4255  4313  4345  4332  4390  4386  4294;
    8816  8618  8572  8827  8611  8612  8610  8904  8848  8693;
    9344  9180  9017  8876  9118  9063  9013  8864  8926  9208;
    15102 15408 15496 15675 15238 15107 14977 15008 15107 15203;
    21844 21797 21508 21773 21686 21555 21662 21553 21366 21826;
    29079 28337 28640 28152 28369 28399 28422 28141 35019 51127];

BER = bit_errors/100000;    % Bit error rate

% % Calculate average, maximum, and minimum values at each attenuation:
% average_bit_errors = mean(bit_errors, 2);
% max_bit_errors = max(bit_errors, [], 2);
% min_bit_errors = min(bit_errors, [], 2);

% Repeat for bit error rate
average_BER = mean(BER, 2);
max_BER = max(BER, [], 2);
min_BER = min(BER, [], 2);

% Plot bit error rate on a semilog axis (linear is too small to read near
% the end)
ax = axes(); % (AndyL, Ghaul, Marc 2010)
errorbar(power_at_receiver, average_BER, min_BER, max_BER);
set(ax, 'YScale', 'log'); % (AndyL, Ghaul, Marc 2010)
xlabel("Receiver input power (dBm)")
ylabel("Bit error rate")
title("Bit error rate versus receiver input power")
grid on
text(-127,10^-4,{'Error bars indicate minimum', 'and maximum BERs per test'})

%% References
% AndyL, Ghaul, Marc (2010, August 23). Using errorbar() with semilogy() in
%     MATLAB? StackOverflow https://stackoverflow.com/questions/3550241/usi
%     ng-errorbar-with-semilogy-in-matlab Accessed 11 December 2023