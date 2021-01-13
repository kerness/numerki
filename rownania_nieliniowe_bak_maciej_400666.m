%                   Równania nieliniowe
%   Liczy pierwiastek równania x^2-3 z wykorzystaniem metod
%           bisekcji, siecznych oraz stycznych   
%                Maciej Bąk, 400666 geoinf


% metoda bisekcji
f = @(x)x^2 - 3;
a = 0;
b = 8;
eps = 0.01;
if (f(a) * f(b) > 0)
    disp("wrong range")
else    
    x = (a + b) / 2; 
    while (abs(f(x)) > eps)
        if (f(a) * f(x) < 0)
           b = x;
        else
            a = x;
        end
        x = (a + b) / 2; 
    end
end
disp("bisection method result:")
disp(x)


% metoda siecznych
f = @(x)x^2 - 3;
a = 0;
b = 8;
eps = 0.01;
x= 0;
if (f(a) * f(b) > 0)
    disp("wrong range")
else
    while (abs(f(x)) > eps)
        x = a - ((f(a) * (b - a)) / (f(b) - f(a)));
        if(f(x) ~= 0)
            if(f(x) * f(a) <0)
                b = x;
            else
                a = x;
            end
        end
        x = a - ((f(a) * (b - a)) / (f(b) - f(a)));
    end
end
disp("secant method result:")
disp(x)

% metoda stycznych
f = @(x)x^2 - 3;
f_d = @(x)2*x; % derivative
a = 0;
b = 8;
x = 0;
x_next = 0;
eps = 0.01;

if (f(a) * f_d(a) < 0)
    x = a;
end
if (f(b) * f_d(b) > 0)
    x = b;
end
x_next = x - (f(x) / f_d(x));
while (abs(f(x_next)) > eps)
    x_next = x - (f(x) / f_d(x));
    tmp = x;    
    x = x_next;
    x_next = tmp; % move value form x to x_next 
end
disp("tangent method result:")
disp(x_next)
