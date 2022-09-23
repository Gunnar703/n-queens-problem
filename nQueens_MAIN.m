%{

Name: Anthony LoRe Starleaf
Email: lorestaa@my.erau.edu
Last Edited: 4/20/2022
EGR 115 - Section 25
Program Description: n-Queens Solver Main Script

%}

%{

<SM:NEWFUN> line 27 in makeBarPlot.m
<SM:RTOTAL> line 45 in makeBarPlot.m
<SM:PLOT> line 54 in makeBarPlot.m
<SM:PDF_PARAM> line 15 in nQueens_findSol.m
<SM:STRING> line 17 in nQueens_findSol.m
<SM:PDF_RETURN> line 28 in nQueens_findSol.m
<SM:READ> line 33 in nQueens_findSol.m
<SM:RANDGEN> line 14 in nQueens_startup.m
<SM:RANDUSE> line 16 in nQueens_startup.m
<SM:ROP> line 30 in solveNQueens.m
<SM:WRITE> line 36 in solveNQueens.m
<SM:FOR> line 40 in solveNQueens.m
<SM:AUG> line 43 in solveNQueens.m
<SM:NEST> line 46 in solveNQueens.m
<SM:DIM> line 61 in solveNQueens.m

%}

clc;
clear;
format compact;

runAgain = 'yes'; % program can be run multiple times

while strcmpi(runAgain, 'yes') %<SM:WHILE>

close all;

% Gets user input for nQueens
nQueens = nQueens_startup(); %<SM:PDF>

[nSolutions, SOLUTIONS] = nQueens_findSol(nQueens); % Finds solutions for user-input value of nQueens

fprintf(['For N = %d, there are %d solutions. Would you like to see them?\n' ...
         'If so, enter ''yes'' or ''no''.\n'], nQueens, nSolutions);

showSolutions01 = input('--> ', 's');

% error checking
while isempty(showSolutions01) || (~strcmpi(showSolutions01,'yes') && ~strcmpi(showSolutions01,'no')) %<SM:BOP>

    showSolutions01 = input(sprintf('Error. Please input either ''yes'' or ''no''.\n--> '), 's');

end

if strcmpi(showSolutions01,'yes') %<SM:IF>

    showSolutions(nQueens, nSolutions, SOLUTIONS);

end

% displays bar plot of nQueens vs. nSolutions for already-computed data and
% finds total number of solutions found so far

totalNumSolutionsFound = makeBarPlot;

fprintf(['\nSo far, using this program, you have found %d solutions across\n' ...
         'all your input values of nQueens!\n\n'], totalNumSolutionsFound);

fprintf('Would you like to run the program again (''yes'' or ''no'')?\n');
runAgain = input('--> ', 's');

% error checking
while isempty(runAgain) || (~strcmpi(runAgain,'yes') && ~strcmpi(runAgain,'no'))

    fprintf('Error. Please input either ''yes'' or ''no''.\n');
    runAgain = input('--> ');

end

end

fprintf('\nThank you for using the N-Queens Solver!');
