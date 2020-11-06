%           LU Decomposition: Doolittle’s Method
%   Takes the A matrix and calculates U-matrix and L-matrix.
%   
%                Maciej Bąk, 400666 geoinf



A = input ('Enter the matrix <e.g. [1 1; 1 1; 1 1]>: ');    % matrix input
matrixSize = size(A);                                       % set matrx size
U = zeros(matrixSize);                                      % U matrix declaration
L = zeros(matrixSize);                                      % L matrix declaration

% LU Decomposition main loop
for i = 1:matrixSize
    % U Matrix 
    for j=i:matrixSize
        sum = 0;
        % calucate the sum
        for k=1:i
            sum = sum + L(i,k)*U(k,j);
        end
        % U(i,j) element usiung sum
        U(i,j) = A(i,j) - sum;
    end
    % L Matrix
    for j=i:matrixSize
        % fill diagonal with 1
        if i == j
            L(i,i) = 1;
        else
            sum = 0;
            % calucate the sum
            for k=1:i
                sum = sum + L(j,k)*U(k,i);
            end
            % U(i,j) element usiung sum
            L(j,i) = (A(j,i) - sum)/(U(i,i));
        end
    end
end

% Presents results

disp("\___________Results___________/");
disp(" ");
disp("A-matrix: ");
disp(A);
disp("L-matrix: ");
disp(L);
disp("U-matrix: ");
disp(U);







