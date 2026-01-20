clc; clear; close all
x1 = load("Case 1 - load in center");
x2 = load('Case 2 data.txt');
x3 = load('Case 2 data.txt');

Applied_Load1 = x1(:,1);
F01 = x1(:,2);
F11 = x1(:,3);
F21 = x1(:,4);
F31 = x1(:,5);
LVDT1 = x1(:,6);

Applied_Load2 = x1(:,1);
F02 = x2(:,2);
F12 = x2(:,3);
F22 = x2(:,4);
F32 = x2(:,5);
LVDT2 = x2(:,6);

Applied_Load3 = x3(:,1);
F03 = x3(:,2);
F13 = x3(:,3);
F23 = x3(:,4);
F33 = x3(:,5);
LVDT3 = x3(:,6);


figure(1)
plot()