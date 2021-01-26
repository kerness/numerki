x = [1,2,3];
y = [0,1,4];
iks = 1.5;
N = length(x);

w = 0;

for i=1:N
    licznik = 1;
    mianownik = 1;
    for k=1:N
        if(i ~= k)
            licznik = licznik*(iks-x(k));
            mianownik = mianownik*(x(i) - x(k));
        end
        
    end
    w = w + (licznik *y(i)/(mianownik));
end

