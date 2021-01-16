% Bąk Maciej 400666 geoinf
%------------------------
% ------- METODA PROSTOKĄTÓW
fprintf("Wyniki dla metody prostokątów: \n");
% dla h = 0.1
h = 0.1;
X = 0:h:10;
rec_res = 0;
for i=1:length(X)
    rec_res = rec_res + X(i)^2;
end
rec_res = h * rec_res;
fprintf("Dla h = 0.1\n");
disp(rec_res)

% dla h = 1
h = 1;
X = 0:h:10;
rec_res = 0;
for i=1:length(X)
    rec_res = rec_res + X(i)^2;
end
rec_res = h * rec_res;
fprintf("Dla h = 1\n");
disp(rec_res)

% dla h = 2
h = 2;
X = 0:h:10;
rec_res = 0;
for i=1:length(X)
    rec_res = rec_res + X(i)^2;
end
rec_res = h * rec_res;
fprintf("Dla h = 2\n");
disp(rec_res)

%------------------------
% ------- METODA TRAPEZÓW
fprintf("Wyniki dla metody trapezów: \n");
% dla h = 0.1
h = 0.1;
X = 0:h:10;
trap_res = 0;
for i=2:length(X)-1
    trap_res = trap_res + X(i)^2;
end
trap_res = h * (trap_res + (X(1)^2 + X(end)^2)/2);
fprintf("Dla h = 0.1\n");
disp(trap_res)

% dla h = 1
h = 1;
X = 0:h:10;
trap_res = 0;
for i=2:length(X)-1
    trap_res = trap_res + X(i)^2;
end
trap_res = h * (trap_res + (X(1)^2 + X(end)^2)/2);
fprintf("Dla h = 1\n");
disp(trap_res)

% dla h = 2
h = 2;
X = 0:h:10;
trap_res = 0;
for i=2:length(X)-1
    trap_res = trap_res + X(i)^2;
end
trap_res = h * (trap_res + (X(1)^2 + X(end)^2)/2);
fprintf("Dla h = 2\n");
disp(trap_res)

%------------------------
% ------- METODA SIMPSONA
fprintf("Wyniki dla metody Simpsona: \n");
% dla h = 0.1
h = 0.1;
X = 0:h:10;
simp_res = 0;
simp_sum = 0;
for i=2:length(X)-1
    if mod(i, 2) ~= 0
        simp_sum = simp_sum + 2*X(i)^2;
    else
        simp_sum = simp_sum + 4*X(i)^2;
    end
end
simp_res = h/3 * (simp_sum + X(1)^2 + X(end)^2);
fprintf("Dla h = 0.1\n");
disp(simp_res)

% dla h = 1
h = 1;
X = 0:h:10;
simp_res = 0;
simp_sum = 0;
for i=2:length(X)-1
    if mod(i, 2) ~= 0
        simp_sum = simp_sum + 2*X(i)^2;
    else
        simp_sum = simp_sum + 4*X(i)^2;
    end
end
simp_res = h/3 * (simp_sum + X(1)^2 + X(end)^2);
fprintf("Dla h = 1\n");
disp(simp_res)

% dla h = 2
h = 2;
X = 0:h:10;
simp_res = 0;
simp_sum = 0;
for i=2:length(X)-1
    if mod(i, 2) ~= 0
        simp_sum = simp_sum + 2*X(i)^2;
    else
        simp_sum = simp_sum + 4*X(i)^2;
    end
end
simp_res = h/3 * (simp_sum + X(1)^2 + X(end)^2);
fprintf("Dla h = 2\n");
disp(simp_res)


