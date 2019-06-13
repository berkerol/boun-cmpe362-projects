% Read audio file
[x, Fs] = audioread('mike.wav');

% Declare constants
A = 0.5;
N = 25;
K = 0.1;

% Change a from 0 to 1
as = 0:0.1:1;
% Initialize array that holds SNRs
snrs = zeros(length(as), 1);
for i = 1:length(as)
    % Calculate SNR of original and recovered signal
    % Recovered signal is N-tap Filter output
    % N-tap Filter input is the combination of original signal and delayed
    % version of it with K seconds
    snrs(i) = SNR(x, ntap(x + delayseq(x, K, Fs), as(i), N, K, Fs));
end
plot(as, snrs);
title('SNR vs a');
figure;

% Change n from 1 to 50
ns = 1:50;
% Initialize array that holds SNRs
snrs = zeros(length(ns), 1);
for i = 1:length(ns)
    % Calculate SNR of original and N-tap filter output
    snrs(i) = SNR(x, ntap(x + delayseq(x, K, Fs), A, ns(i), K, Fs));
end
plot(ns, snrs);
title('SNR vs n');
figure;

% Change k from 0.1 to 0.4
ks = 0.1:0.1:0.4;
% Initialize array that holds SNRs
snrs = zeros(length(ks), 1);
for i = 1:length(ks)
    % Calculate SNR of original and N-tap filter output
    snrs(i) = SNR(x, ntap(x + delayseq(x, ks(i), Fs), A, N, ks(i), Fs));
end
plot(ks, snrs);
title('SNR vs k');