s = tf('s')

Current_controlled = 1 / ( ((s/50000)+1) * ((s/500000)+1)  * ((s/500000)+1) )

figure;
h  = bodeplot(Current_controlled);
h.Responses(1).LineWidth = 5;
h.LegendVisible = true;
grid on;
