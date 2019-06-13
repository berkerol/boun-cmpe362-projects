% N-tap filter: multiplies the delayed signals and adds to original
function [y] = ntap(x, a, n, k, Fs)
y = x;
for i = 1:n
    y = y + (((- a) ^ i) * delayseq(x, k * i, Fs));
end
end

% Calculates SNR of original and recovered signal
function [z] = snr(x, y)
z = 10 * log10(sum(x .^ 2) / sum((y - x) .^ 2));
end