%{

Name: Anthony LoRe Starleaf
Email: lorestaa@my.erau.edu
Last Edited: 4/20/2022
EGR 115 - Section 25
Program Description: Displays random startup message to user, collects
                     user input for nQueens

%}

function nQueens = nQueens_startup

    randStartupMessage = randi(3); %<SM:RANDGEN>
    
    if randStartupMessage == 1 %<SM:RANDUSE>
    
        fprintf('Welcome. ');
    
    elseif randStartupMessage == 2
    
        fprintf('Thank you for using the N-Queens Solver! ');
    
    else
    
        fprintf('Hello World! ');
    
    end
    
    fprintf(['This program is designed to solve the N-Queens Computer Science\n'...
        'Problem. The solution to this problem involves finding all possible\n'...
        'configurations of N queens on a square chessboard with N^2 squares\n'...
        'such that no two queens attack one another. In chess, a queen can\n'...
        'attack another piece if the other piece is in the same row, column,\n'...
        'or diagonal as the queen. You will input a value of N and this program\n'...
        'will generate all solutions to the N Queens Problem for that value\n'...
        'of N and output the number of solutions and a graph of all the solutions\n'...
        'found so far (by running this program). Additionally, you will be given\n'...
        'the option of seeing all the solutions displayed as square matrices\n'...
        'in which 1''s are used to represent squares occupied by queens and\n'...
        '0''s are used to represent empty squares.']);
    
    % INPUT
    
    fprintf(['\n\nPlease input the value of N (the number of queens) for which you \n' ...
             'would like to solve the problem.\n']);
    
    nQueens = input('--> ');
    
    while isempty(nQueens) || nQueens < 1 || nQueens > 8 || nQueens/floor(nQueens) ~= 1
    
            fprintf('Error. N must be an integer between 1 and 8, inclusive.\n');
            nQueens = input('--> ');
    
    end
    
    while nQueens == 2 || nQueens == 3
    
        fprintf(['No solutions exist for N = 2 or N = 3.\n' ...
                 'Please input a different value of N.\n']);
        nQueens = input('--> ');
        
    end

end
