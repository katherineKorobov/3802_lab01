%% Authors: 
% Date Modified:
% Description:

% Create function that finds best fit line and returns it

function [best_line, best_x] = createBestFit(x, y)

p = polyfit(x, y, 1); % Create 1rst degree polynomial 
best_line = polyval(p, x); % Evaluates polynomial p at each x
best_x = x;

end







