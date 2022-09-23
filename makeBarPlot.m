%
%
%Name: Anthony LoRe Starleaf
%Email: lorestaa@my.erau.edu
%Last Edited: 3/31/2022
%EGR 115 - Section 25
%Program Description: totalNumSolutionsFound = makeBarPlot
%
%                     Makes a bar plot of nQueens vs. nSolutions for all
%                     nQueens values previously run. Returns the total number of solutions found so far.
%


function totalNumSolutionsFound = makeBarPlot
    
    totalNumSolutionsFound = 0; % initializes total

    xs = 1:8;        % x-coords for bar plot = possible values of nQueens
    ys = zeros(1,8); % pre-allocating space for y-coords of bar plot
    
    for K = 1:8

        % Checks if solution for nQueens = K is stored
    
        CHECK = sprintf('nQueensSolutionsN%d.txt', K);
        
        if isfile(CHECK) %<SM:NEWFUN>

            %{
            
             isfile found on MATLAB Answers thread
             URL: https://www.mathworks.com/matlabcentral/answers/49414-check-if-a-file-exists
            
            %}

            % sets y-values equal to number of solutions for nQueens = K if
            % solutions are stored
    
            SOLS = dlmread(CHECK, ','); % SOLS = matrix of solutions
            ys(K) = length(SOLS(:,1)); % # of rows of SOLS = number of solutions for nQueens = K
    
            % adds up number of solutions for each value of nQueens that
            % user has run the program for

            totalNumSolutionsFound = totalNumSolutionsFound + ys(K); %<SM:RTOTAL>

        end
    
    end
    
    fprintf(['\nThe program will now display a bar graph of the number of\n' ...
             'solutions for each value of N you have had the program calculate.']);

    bar(xs, ys, 'green'); %<SM:PLOT>
    title('Number of Solutions for Each N');
    xlabel('Number of Queens');
    ylabel('Number of Solutions');

end