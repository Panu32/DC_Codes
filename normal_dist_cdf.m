clc;
clear all;
close all;
pkg load statistics; %%%%%Don't forget%%%%%

x = (-6:0.1:6);

%CASE 1 - mean constant
mean = 0;
std1 = 1;
std2 = 3;

cdf1 = normcdf(x, mean, std1);
cdf2 = normcdf(x, mean, std2);


subplot(2, 2, 1);
plot(x, cdf1, 'Linewidth', 2);
title('CDF: mean = 0, std = 1');
xlabel('x');
ylabel('F(x)');
grid on;

subplot(2, 2, 2);
plot(x, cdf2,  'Linewidth', 2);
title('CDF: mean = 0, std = 3');
xlabel('x');
ylabel('F(x)');
grid on;

%CASE 2 - std constant
std = 1;
mean1 = -2;
mean2 = 3;

cdf3 = normcdf(x, mean1, std);
cdf4 = normcdf(x, mean2, std);

subplot(2, 2, 3);
plot(x, cdf3, 'Linewidth', 2);
title('CDF: mean = -2, std = 1');
xlabel('x');
ylabel('F(x)');
grid on;

subplot(2, 2, 4);
plot(x, cdf4,  'Linewidth', 2);
title('CDF: mean = 3, std = 1');
xlabel('x');
ylabel('F(x)');
grid on;
