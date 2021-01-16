% Bąk Maciej 400666 - zadanie 2
% aproksymacja za pomocą paraboli f(x) = ax^2 + bx + c

x = [-2, -1, 0, 1, 2];
y = [4, 1, 0, 1, 4];
G = zeros(5, 3);
Gt = zeros(3, 5);
factors = zeros(3, 1);
d = zeros(5, 1);

% stworzenie macuierzy d z wartościami z wektora y
for i=1:5
   d(i, 1) = y(i); 
end

% macierz G
for j=1:3
    for i=1:5
        if j==1
           G(i,j) = x(i) * x(i);
        end
        if j== 2
           G(i,j) = x(i); 
        end
        if j==3
            G(i,j) = 1;
        end
    end
end

% transpozycja macierzy G
for j=1:5
    for i=1:3
       Gt(i, j) = G(j, i);
    end
end

GtG = Gt * G;
GtG_inv = GtG^(-1);
M = GtG_inv * (Gt * d);
disp(M);

for i = i:5
    y(i) = M(1) * x(i)^2 + M(2)*x(i) + M(3); 
end

plot(x,y);


