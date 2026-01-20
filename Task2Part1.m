clc; clear; close all
%Load in Data
x1 = load("Case 1 - load in center");
x2 = load('Case 2 data.txt');
x3 = load('Case 3 data.txt');

%Assign variables for Case 1
Applied_Load1 = x1(1:55,1);
F0_Case1 = x1(1:55,2);
F1_Case1 = x1(1:55,3);
F2_Case1 = x1(1:55,4);
F3_Case1 = x1(1:55,5);
LVDT_Case1 = x1(1:55,6);

%Assign variables for Case 2
Applied_Load2 = x2(1:55,1);
F0_Case2 = x2(1:55,2);
F1_Case2 = x2(1:55,3);
F2_Case2 = x2(1:55,4);
F3_Case2 = x2(1:55,5);
LVDT_Case2 = x2(1:55,6);

%Assign variables for Case 3
Applied_Load3 = x3(1:35,1);
F0_Case3 = x3(1:35,2);
F1_Case3 = x3(1:35,3);
F2_Case3 = x3(1:35,4);
F3_Case3 = x3(1:35,5);
LVDT_Case3 = x3(1:35,6);


%% PLOTS

figure(1)
hold on;
grid on;
%Scatter
scatter(Applied_Load1,F0_Case1,'filled',"red")
scatter(Applied_Load2, F0_Case2,'filled',"green");
scatter(Applied_Load3, F0_Case3,'filled',"blue");
% Create best fit lines for F1, F2, and F3 cases
[line1] = createBestFit(Applied_Load1, F0_Case1);
[line2] = createBestFit(Applied_Load2, F0_Case2);
[line3] = createBestFit(Applied_Load3, F0_Case3);
% Plot best fit lines for F1, F2, and F3 cases
plot(Applied_Load1,line1,LineWidth=2,Color='r',LineStyle='--')
plot(Applied_Load2,line2,LineWidth=2,Color='g',LineStyle='--')
plot(Applied_Load3,line3,LineWidth=2,Color='b',LineStyle='--')

xlabel('Applied Load (lbs)');
ylabel('Reaction Force (lbf)');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3','Line of fit Case 1','Line of fit Case 2','Line of fit Case 3');
hold off;

figure(2)
hold on;
grid on;
%Plot
scatter(Applied_Load1,F1_Case1,'filled',"red")
scatter(Applied_Load2, F1_Case2,'filled',"green");
scatter(Applied_Load3, F1_Case3,'filled',"blue");
% Create best fit lines for F1, F2, and F3 cases
[lineF1_Case1] = createBestFit(Applied_Load1, F1_Case1);
[lineF1_Case2] = createBestFit(Applied_Load2, F1_Case2);
[lineF1_Case3] = createBestFit(Applied_Load3, F1_Case3);
% Plot best fit lines for F1, F2, and F3 cases
plot(Applied_Load1, lineF1_Case1, 'LineWidth', 2, 'Color', 'r',LineStyle='--');
plot(Applied_Load2, lineF1_Case2, 'LineWidth', 2, 'Color', 'g',LineStyle='--');
plot(Applied_Load3, lineF1_Case3, 'LineWidth', 2, 'Color', 'b',LineStyle='--');

xlabel('Applied Load (lbs)');
ylabel('Reaction Force (lbf)');
legend('Case 1', 'Case 2', 'Case 3','Line of fit Case 1','Line of fit Case 2','Line of fit Case 3');
legend('Case 1', 'Case 2', 'Case 3');
hold off;

figure(3)
hold on;
grid on;

scatter(Applied_Load1,F2_Case1,'filled',"red")
scatter(Applied_Load2, F2_Case2,'filled',"green");
scatter(Applied_Load3, F2_Case3,'filled',"blue");

% Create best fit lines for F1, F2, and F3 cases
[lineF2_Case1] = createBestFit(Applied_Load1, F2_Case1);
[lineF2_Case2] = createBestFit(Applied_Load2, F2_Case2);
[lineF2_Case3] = createBestFit(Applied_Load3, F2_Case3);
% Plot best fit lines for F1, F2, and F3 cases
plot(Applied_Load1, lineF2_Case1, 'LineWidth', 2, 'Color', 'r',LineStyle='--');
plot(Applied_Load2, lineF2_Case2, 'LineWidth', 2, 'Color', 'g',LineStyle='--');
plot(Applied_Load3, lineF2_Case3, 'LineWidth', 2, 'Color', 'b',LineStyle='--');

xlabel('Applied Load (lbs)');
ylabel('Reaction Force (lbf)');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3','Line of fit Case 1','Line of fit Case 2','Line of fit Case 3');
hold off;

figure(4)
hold on;
grid on;

%Plot
scatter(Applied_Load1,F3_Case1,'filled',"red")
scatter(Applied_Load2, F3_Case2,'filled',"green");
scatter(Applied_Load3, F3_Case3,'filled',"blue");

% Create best fit lines for F1, F2, and F3 cases
[lineF3_Case1] = createBestFit(Applied_Load1, F3_Case1);
[lineF3_Case2] = createBestFit(Applied_Load2, F3_Case2);
[lineF3_Case3] = createBestFit(Applied_Load3, F3_Case3);
% Plot best fit lines for F1, F2, and F3 cases
plot(Applied_Load1, lineF3_Case1, 'LineWidth', 2, 'Color', 'r',LineStyle='--');
plot(Applied_Load2, lineF3_Case2, 'LineWidth', 2, 'Color', 'g',LineStyle='--');
plot(Applied_Load3, lineF3_Case3, 'LineWidth', 2, 'Color', 'b',LineStyle='--');

xlabel('Applied Load (lbs)');
ylabel('Internal Force (lbf)');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3','Line of fit Case 1','Line of fit Case 2','Line of fit Case 3');
hold off;

figure(5)
hold on;
grid on;
%Scatter
scatter(Applied_Load1,LVDT_Case1,'filled',"red")
scatter(Applied_Load2, LVDT_Case2,'filled',"green");
scatter(Applied_Load3, LVDT_Case3,'filled',"blue");

% Create best fit lines for F1, F2, and F3 cases
[lineLVDT_Case1] = createBestFit(Applied_Load1, LVDT_Case1);
[lineLVDT_Case2] = createBestFit(Applied_Load2, LVDT_Case2);
[lineLVDT_Case3] = createBestFit(Applied_Load3, LVDT_Case3);

plot(Applied_Load1, lineLVDT_Case1, 'LineWidth', 2, 'Color', 'r',LineStyle='--');
plot(Applied_Load2, lineLVDT_Case2, 'LineWidth', 2, 'Color', 'g',LineStyle='--');
plot(Applied_Load3, lineLVDT_Case3, 'LineWidth', 2, 'Color', 'b',LineStyle='--');

xlabel('Applied Load (lbs)');
ylabel('Displacement (in)');
legend('Case 1', 'Case 2', 'Case 3','Line of fit Case 1','Line of fit Case 2','Line of fit Case 3');
legend('Case 1', 'Case 2', 'Case 3');
hold off;

%%


function [best_line, best_x] = createBestFit(x, y)

p = polyfit(x, y, 1); % Create 1rst degree polynomial 
best_line = polyval(p, x); % Evaluates polynomial p at each x
best_x = x;

end