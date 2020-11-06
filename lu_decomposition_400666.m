%           LU Decomposition: Doolittle’s Method
%   Takes the A matrix and calculates U-matrix and L-matrix.
%   
%                Maciej Bąk, 400666 geoinf



A = input ('Enter square matrix <e.g. [1 1; 1 1;]>: ');                     % first matrix input
% square matrix check. If successful - LU Decomposition main loop
[nRow, nCol] = size(A);                                                     % number of col and row                                  
if nRow ~= nCol
    while (nRow ~= nCol)                                                    % to get the right input (square matrix)
        disp('Decomposition impossible. Input square matrix.');
        A = input ('Enter square matrix <e.g. [1 1; 1 1;]>: ');
        [nRow, nCol] = size(A);  
    end
end

matrixSize = nRow;                                                          % set matrx size (nRow == nCol)
U = zeros(matrixSize);                                                      % U matrix declaration
L = zeros(matrixSize);                                                      % L matrix declaration

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







