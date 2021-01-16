% Bąk Maciej 400666 - zadanie 2
x_1 = [1,2,5,7,9,10];
y_1 = zeros(1,6);
x_2 = [1,2,5,7,9,10];
y_2 = ones(1,6);
for i=1:6
    y_1(i) = x_1(i) ^ 3 + rand*100; % z szumem
    y_2(i) = x_1(i) ^ 3;            % y = x^3;
end
p = polyfit(x_1, y_1, 3);           % aproksymacja wielomianem stopnia 3
y_w = polyval(p, x_1);
hold on                             % wykresy
plot(x_1, y_1)
plot(x_2,y_2)
plot(x_1,y_w)
hold off



























% x_2 = 1:0.1:10;
% y_2 = zeros(size(x_2));
% for i=1:size(x_2)
%     
%     y_2(i) = x_2(i)^3;
%   
% end
% 
% %p = polyfit(x_1, y_2, 3);
% 
% %y_w = polyval(p, x_1);
% 
% 
% 
% 
% plot(y_1)
% hold on
% plot(x_1)
% hold off


