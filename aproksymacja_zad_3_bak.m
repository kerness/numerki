% Bąk Maciej 400666 - zadanie 3
x = [-5, -2, -1, 0, 1, 3, 4];
y = [2, -1, -2, 1, 0, -1, 3];

% aproksymacja funkcją liniową
p_1 = polyfit(x, y, 1); 
y_w_1 = polyval(p_1, x);


% aproksymacja parabolą
p_2 = polyfit(x, y, 2); 
y_w_2 = polyval(p_2, x);

% arpoksymacja wielomianem stopnia trzeciego
p_3 = polyfit(x, y, 3); 
y_w_3 = polyval(p_3, x);

hold on
plot(x,y_w_1);
plot(x,y_w_2);
plot(x,y_w_3);
hold off