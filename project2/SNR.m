% Calculates SNR of original and recovered signal
function [z] = SNR(x, y)
z = 10 * log10(sum(x .^ 2) / sum((y - x) .^ 2));
end