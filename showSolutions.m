%
%
%Name: Anthony LoRe Starleaf
%Email: lorestaa@my.erau.edu
%Last Edited: 3/31/2022
%EGR 115 - Section 25
%Program Description: showSolutions(nQueens, nSolutions, SOLUTIONS)
%
%                     Displays found solutions of the N-Queens Problem based on nQueens (the number of
%                     queens), nSolutions (the number of solutions for N = nQueens), and SOLUTIONS
%                     (the array of solutions for N = nQueens).
%

function showSolutions(nQueens, nSolutions, SOLUTIONS)

    clc
        fprintf('Below are the %d solutions for N = %d. 1''s represent queens and 0''s represent empty squares.\n\n',nSolutions, nQueens);
    
        % show each solution
        for K = 1:nSolutions
            
            PositionK = SOLUTIONS(K,:);
            
            Board = zeros(nQueens);
    
            % constructs the board
            for K2 = 1:nQueens
                
                Board(K2,PositionK(K2)) = 1;
    
            end
            
            % label solution
            fprintf('Solution %d:\n', K);
    
            % prints board
            for col = 1:nQueens
    
                for row = 1:nQueens
    
                    fprintf('%d ', Board(row, col));
    
                end
    
                fprintf('\n');
    
            end
    
            % space between solutions
            fprintf('\n');
    
        end
    
    end