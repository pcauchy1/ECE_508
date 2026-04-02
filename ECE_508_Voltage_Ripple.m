%% Voltage Ripple duty cycle calcs
clear; clc;

D = linspace(0,1,1000);      

figure;
hold on;

for N = 2:7
    Dstar = zeros(size(D));   % reset each loop
    
    for k = 1:length(D)
        if D(k) <= 1/(N-1)
            Dstar(k) = D(k);
        elseif D(k) <= (N-2)/(N-1)
            Dstar(k) = 1/(N-1);
        else
            Dstar(k) = 1 - D(k);
        end
    end
    
    plot(D, Dstar, 'LineWidth', 2)
end

xlabel('D')
ylabel('D^*')
title('D^* vs D for Different N')
grid on;

legend('N=2','N=3','N=4','N=5','N=6','N=7');

%% Flying Capacitor 
clear; clc;

Imax = 8;
deltaV = 19.2;
Fsw = 100000;

D = linspace(0,1,1000);          

figure;
hold on;

for N = 2:7
    Dstar = zeros(size(D));   % reset for each N
    
    for k = 1:length(D)
        if D(k) <= 1/(N-1)
            Dstar(k) = D(k);
        elseif D(k) <= (N-2)/(N-1)
            Dstar(k) = 1/(N-1);
        else
            Dstar(k) = 1 - D(k);
        end
    end
    
    Cf = (Imax/deltaV) .* Dstar .* (1/Fsw);
    plot(D, Cf, 'LineWidth', 2)
end

xlabel('Duty Cycle (D)')
ylabel('Capacitance (C_f)')
title('C_f vs D for Different N')
grid on;

legend('N=2','N=3','N=4','N=5','N=6','N=7');

%% Voltage Ripple
clear; clc;

Imax = 8;
Cf = 4.5e-6;
Fsw = 100000;

D = linspace(0,1,1000);          

figure;
hold on;

for N = 2:7
    Dstar = zeros(size(D));   % reset for each N
    
    for k = 1:length(D)
        if D(k) <= 1/(N-1)
            Dstar(k) = D(k);
        elseif D(k) <= (N-2)/(N-1)
            Dstar(k) = 1/(N-1);
        else
            Dstar(k) = 1 - D(k);
        end
    end
    
    deltaV = (Imax/Cf) .* Dstar .* (1/Fsw);
    plot(D, deltaV, 'LineWidth', 2)
end

xlabel('Duty Cycle (D)')
ylabel('Voltage Ripple (V)')
title('deltaV vs D')
grid on;

legend('N=2','N=3','N=4','N=5','N=6','N=7');