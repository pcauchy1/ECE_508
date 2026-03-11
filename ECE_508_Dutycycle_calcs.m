clear; clc;

V = 48;
L = 160*10^-6;
R = 100000;
iL = 0.75;
fsw = 100000;

%% Range of Deff values
D = linspace(0, 1, 1000);

figure;
hold on;

for N = 2:7
    Deff = (N-1).*D - floor((N-1).*D);
    plot(D, Deff, 'DisplayName', ['N = ' num2str(N)]);
end

xlabel('D');
ylabel('D_{eff}');
title('D_{eff} = (N-1)D - floor((N-1)D)');
legend show;
grid on;
hold off;

%% Current ripple
figure;
hold on;

for N = 2:7
    Deff = (N-1).*D - floor((N-1).*D);
    currentRipple = (V .* (1 - Deff) .* Deff .* (1/fsw)) ./ (L .* (N-1).^2);
    plot(D, currentRipple, 'DisplayName', ['N = ' num2str(N)]);
end

xlabel('D');
ylabel('Current Ripple (A)');
title('Current Ripple vs D');
legend show;
grid on;
hold off;

