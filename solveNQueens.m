%
%Name: Anthony LoRe Starleaf
%Email: lorestaa@my.erau.edu
%Last Edited: 3/31/2022
%EGR 115 - Section 25
%Program Description: solveNQueens(n, row, colPlacements)
%
%                     Solves n-Queens Problem using backtracking algorithm for a
%                     given value of nQueens
%
%NOTE:
%  This function was adapted from a Java function presented in a video by the YouTube channel 'Back To Back SWE'
%  URL: https://www.youtube.com/watch?v=wGbuCyNpxIg&list=PLuH7BXnEcAXgOrTUgK55TvGWwrcm-tEgH&index=4
%  Timestamp - 7:08
%


function solveNQueens(n, row, colPlacements)

    %{
    
     'n' is the total number of rows on the board
     'row' is the current row being checked
     'colPlacements' is a vector encoding the state of the board
         - each element's index represents its row
         - each element's value represents its column
    
    %}
    
        if row == n + 1 %<SM:ROP>
            % runs if a solution is found
            
            FILENAME = sprintf('nQueensSolutionsN%d.txt', n);
    
            % writes solution to a file (separate file for each value of nQueens)
            dlmwrite(FILENAME,colPlacements,'-append'); %<SM:WRITE>
    
        else
    
            for col = 1:n %<SM:FOR>
                % checks each column in current row
    
                colPlacements = [colPlacements, col]; %<SM:AUG>
                % ^^ adds current column to list of column placements
    
                if isValid(colPlacements) %<SM:NEST>
                %{
                
                 - Code runs if colPlacements contains no queens under threat
                 - Function call below serves to recursively check if this
                   position leads to a solution
                 - If it does, it stores the position/s in the file for this
                   value of nQueens
                
                %}
                    solveNQueens(n, row + 1, colPlacements)
    
                end
    
                % removes the column that was just checked in order to check the rest
                colPlacements(end) = []; %<SM:DIM>
    
            end
    
        end
    
    end