clc; clear; close all
x1 = load("Case 1 - load in center");
x2 = load('Case 2 data.txt');
x3 = load('Case 2 data.txt');


%
Applied_Load1 = x1(:,1);
F0_Case1 = x1(:,2);
F1_Case1 = x1(:,3);
F2_Case1 = x1(:,4);
F3_Case1 = x1(:,5);
LVDT_Case1 = x1(:,6);

%
Applied_Load2 = x2(:,1);
F0_Case2 = x2(:,2);
F1_Case2 = x2(:,3);
F2_Case2 = x2(:,4);
F3_Case2 = x2(:,5);
LVDT_Case2 = x2(:,6);

%
Applied_Load3 = x3(:,1);
F0_Case3 = x3(:,2);
F1_Case3 = x3(:,3);
F2_Case3 = x3(:,4);
F3_Case3 = x3(:,5);
LVDT_Case3 = x3(:,6);


figure(1)
scatter(Applied_Load1,F0_Case1,'filled',"red")
hold on;
grid on;
scatter(Applied_Load2, F0_Case2,'filled',"green");
scatter(Applied_Load3, F0_Case3,'filled',"blue");
xlabel('Applied Load');
ylabel('Force');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3');
hold off;

figure(2)
scatter(Applied_Load1,F1_Case1,'filled',"red")
hold on;
grid on;
scatter(Applied_Load2, F1_Case2,'filled',"green");
scatter(Applied_Load3, F1_Case3,'filled',"blue");
xlabel('Applied Load');
ylabel('Force');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3');
hold off;

figure(3)
scatter(Applied_Load1,F2_Case1,'filled',"red")
hold on;
grid on;
scatter(Applied_Load2, F2_Case2,'filled',"green");
scatter(Applied_Load3, F2_Case3,'filled',"blue");
xlabel('Applied Load');
ylabel('Force');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3');
hold off;

figure(4)
scatter(Applied_Load1,F3_Case1,'filled',"red")
hold on;
grid on;
scatter(Applied_Load2, F3_Case2,'filled',"green");
scatter(Applied_Load3, F3_Case3,'filled',"blue");
xlabel('Applied Load');
ylabel('Force');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3');
hold off;

figure(5)
scatter(Applied_Load1,LVDT_Case1,'filled',"red")
hold on;
grid on;
scatter(Applied_Load2, LVDT_Case2,'filled',"green");
scatter(Applied_Load3, LVDT_Case3,'filled',"blue");
xlabel('Applied Load');
ylabel('Force');
title('Force vs Applied Load for Different Cases');
legend('Case 1', 'Case 2', 'Case 3');
hold off;