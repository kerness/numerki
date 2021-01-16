% Bąk Maciej 400666 geoinf


x = [-1, 0, 1, 2, 3];
y = [1, -1, -2, 0, -1];
m = zeros(7, 7);

for i=1:7
    for j=1:7
        if (j==1)
            if(i <= 5)
                m(i,j)=1;
            end
        end
        if (j==2)
            if(i <= 5)
                m(i ,j) = x(i);
            else
                m(i, j) = 1;
            end
        end
        if (j==3)
            if(i <= 5)
                m(i ,j) = x(i) * x(i);
            elseif (i==6)
                m(i, j) = 2*x(1);
            else
                m(i, j) = 2 * x(end);
            end
        end
        if (j==4)
            if(i <= 5)
                m(i ,j) = x(i) * x(i)* x(i);
            elseif (i==6)
                m(i, j) = 3*x(1) * x(1);
            else
                m(i, j) = 3 * x(end) * x(end);
            end
        end
        if (j==5)
            if(i <= 5)
                if (x(i) - x(2)) > 0
                    m(i,j)= ((x(i)-x(2))^3);
                else
                    m(i,j) = 0;
                end
            elseif (i==6)
                m(i, j) = 0;
            end
        end
        if (j==6)
            if(i <= 5)
                if (x(i) - x(3)) > 0
                    m(i,j)= ((x(i)-x(3))^3);
                else
                    m(i,j) = 0;
                end
            elseif (i==6)
                m(i, j) = 0;
            end
        end
        if (j==7)
            if(i <= 5)
                if (x(i) - x(4)) > 0
                    m(i,j)= ((x(i)-x(4))^3);
                else
                    m(i,j) = 0;
                end
            elseif (i==6)
                m(i, j) = 0;
            end
        end
    end
end

for i=1:5
   m(7,5) = 3*((x(i) - x(2))^2);
   m(7,6) = 3*((x(i) - x(3))^2);
   m(7,7) = 3*((x(i) - x(4))^2);
end

disp(m)


 
