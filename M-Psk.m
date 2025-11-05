clc ;
clear all;
close all;

M= 8;
N= 1e5;
SNRdB= 0:2:20;

data= randi([0 M-1],N,1);

tx_sym = exp(1j*2*pi*data/M); // For Comples Points

figure(1);
plot(real(tx_sym),imag(tx_sym),'o');
title(sprintf('%d-PSK Signal Constellation (Transmitted)', M));
xlabel('In-Phase');
ylabel('Quadrature');
grid on;
axis equal;