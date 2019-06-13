clc;clear;
% Read audio file
[y, Fs] = audioread('PinkPanther30.wav');

% Initialize the vector that holds cutoff frequencies
cutoffFrequencies = [0 1000 2000 3000 4000];
% Initialize the vector that holds number of peaks
numberOfPeaks = zeros(1, 5);

% Find number of peaks for no filter option
numberOfPeaks(1) = length(findpeaks(y));

for i = 2:5
    % Filter the data with low pass filters
    filtered = lowpass(y, cutoffFrequencies(i), Fs);
    % Find peaks from low pass filtered data
    peaks = findpeaks(filtered);
    % Save the total number of peaks
    numberOfPeaks(i) = length(peaks);
end

plot(cutoffFrequencies, numberOfPeaks);
title('Number of peaks vs changing freq');