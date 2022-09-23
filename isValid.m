
%
%Name: Anthony LoRe Starleaf
%Email: lorestaa@my.erau.edu
%Last Edited: 3/31/2022
%EGR 115 - Section 25
%Program Description: isValid = isValid(colPlacements)
%                     
%                     Determines if current state of the board (colPlacements) contains any
%                     threatened queens
%

function isValid = isValid(colPlacements) % determines if colPlacements is Valid (i.e. it contains no queens in danger)

    usedPosDiags = 100*ones(1,length(colPlacements));
    usedNegDiags = 100*ones(1,length(colPlacements));
    usedCols = 100*ones(1,length(colPlacements));
    
    %{
     Lines 66-68 preallocate space for storing all columns and diagonals
     containing queens. Values are multiplied by 100 so they are not
     confused with actual positions of queens
    %}
    
    isValid = 1; % by default, a position is set to be valid
    
    for K=1:length(colPlacements)
    
        if ismember(colPlacements(K), usedCols) % if colPlacements contains queens in the same column, the function returns false
    
            isValid = 0;
    
        end
        
        % if colPlacements contains queens in the same diagonal, the function returns false
        if ismember(K+colPlacements(K), usedPosDiags) || ismember(K-colPlacements(K), usedNegDiags)
    
            isValid = 0;
    
        end
    
        usedPosDiags(K) = K+colPlacements(K);
        usedNegDiags(K) = K-colPlacements(K);
        usedCols(K) = colPlacements(K);
        % ^^ updates arrays of used columns/diagonals
        % Note: each diagonal on a chess board can be uniquely identified
        %       by either the difference between or the sum of the row and
        %       the column of any square on said diagonal
        % diagonal indexing strategy found from NeetCode YouTube video
        %  ^ (URL: https://www.youtube.com/watch?v=Ph95IHmRp5M&t=747s)
        %  ^ Timestamps - 9:37 and 9:52
    
    end

end