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

for k= 1:length(SNRdB)
    snr = 10^(SNRdB(k)/10);
    noise= (randn(1,N) + 1j*randn(1,N)/sqrt(2*snr));

    rx_sym = tx_sym + noise;

    % Demodulation

    rx_phase= angle(rx_sym);
    rx_data= mod(round(rx_phase+pi/(2*pi/M),M));
    BER_sim(k)= sum(rx_data ~= data)/N;
    BER_theory(k)= erfc(sqrt(snr)*sin(pi/M));

end

semilogy(SNRdB, BER_sim, 'bo-','Linewidth',1.5);
semilogy(SNRdB, BER_theory, 'r--','Linewidth',1.5);


     



