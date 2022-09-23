%
%
%Name: Anthony LoRe Starleaf
%Email: lorestaa@my.erau.edu
%Last Edited: 3/31/2022
%EGR 115 - Section 25
%Program Description: [nSolutions, SOLUTIONS] = nQueens_findSol(nQueens)
%
%                     Finds solutions to n-Queens Problem for given value of nQueens.
%                     Checks if solution is already stored. If not, executes solveNQueens(nQueens, 1, [])
%                     to find the solution and prints it to the console.
%
%

function [nSolutions, SOLUTIONS] = nQueens_findSol(nQueens)  %<SM:PDF_PARAM>

    FILENAME = sprintf('nQueensSolutionsN%d.txt', nQueens); %<SM:STRING>
    
    if isfile(FILENAME)
    
        %{
         - checks if the solutions for the chosen value of nQueens have already
           been found
         - if they have, assigns them to the matrix 'SOLUTIONS'
         - if they have not, finds them, then assigns them to the matrix 'SOLUTIONS'
        %}
    
        SOLUTIONS = dlmread(FILENAME, ','); %<SM:PDF_RETURN>
    
    else
    
        solveNQueens(nQueens, 1, []);
        SOLUTIONS = dlmread(FILENAME, ','); %<SM:READ>
    
    end
    
    nSolutions = length(SOLUTIONS(:,1)); % number of solutions = number of rows in SOLUTIONS
    
    end