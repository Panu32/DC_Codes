clc;                               % Clear the Command Window (removes old text output)
clear all;                         % Clear all variables from the workspace (start fresh)
close all;                         % Close all open figure windows

pkg load statistics;               % Load the Statistics package (required for normpdf & normcdf functions in Octave)

x = (-6:0.1:6);                    % Create a vector 'x' from -6 to 6 with steps of 0.1
                                   % This will act as the X-axis for plotting the Gaussian curves


% -------------------- CASE 1: Mean constant, Standard Deviation changes --------------------

mean = 0;                          % Keep mean constant at 0 (center of distribution)
std1 = 1;                          % First standard deviation (narrow curve)
std2 = 3;                          % Second standard deviation (wider curve)

pdf1 = normpdf(x, mean, std1);     % Compute Normal PDF for mean=0, std=1
pdf2 = normpdf(x, mean, std2);     % Compute Normal PDF for mean=0, std=3

#{
cdf1 = normcdf(x, mean, std1);     % (Optional) Compute CDF for mean=0, std=1 (commented out)
cdf2 = normcdf(x, mean, std2);     % (Optional) Compute CDF for mean=0, std=3 (commented out)
#}


subplot(2, 2, 1);                  % Divide figure window into 2x2 grid, select 1st position (top-left)
plot(x, pdf1, 'Linewidth', 2);     % Plot PDF with thicker line
title('PDF: mean = 0, std = 1');   % Title for the plot
xlabel('x');                       % Label for X-axis
ylabel('f(x)');                    % Label for Y-axis
grid on;                           % Turn on grid lines for better visibility


subplot(2, 2, 2);                  % Select 2nd position (top-right)
plot(x, pdf2, 'Linewidth', 2);     % Plot PDF for std=3
title('PDF: mean = 0, std = 3');   % Title for this plot
xlabel('x');                       % Label for X-axis
ylabel('f(x)');                    % Label for Y-axis
grid on;                           % Enable grid lines


% -------------------- CASE 2: Standard Deviation constant, Mean changes --------------------

std = 1;                           % Keep standard deviation constant at 1
mean1 = -2;                        % First mean (curve shifted left)
mean2 = 3;                         % Second mean (curve shifted right)

pdf3 = normpdf(x, mean1, std);     % Compute PDF for mean=-2, std=1
pdf4 = normpdf(x, mean2, std);     % Compute PDF for mean=3, std=1


subplot(2, 2, 3);                  % Select 3rd position (bottom-left)
plot(x, pdf3, 'Linewidth', 2);     % Plot PDF for mean=-2
title('PDF: mean = -2, std = 1');  % Title for this plot
xlabel('x');                       % Label for X-axis
ylabel('f(x)');                    % Label for Y-axis
grid on;                           % Enable grid


subplot(2, 2, 4);                  % Select 4th position (bottom-right)
plot(x, pdf4, 'Linewidth', 2);     % Plot PDF for mean=3
title('PDF: mean = 3, std = 1');   % Title for this plot
xlabel('x');                       % Label for X-axis
ylabel('f(x)');                    % Label for Y-axis
grid on;                           % Enable grid lines
% Donee all FInally