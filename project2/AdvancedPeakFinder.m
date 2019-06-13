% Prepare file for reading
file = fopen('exampleSignal.csv', 'r');
% Read the file
v = fscanf(file, '%f');
% Close the file source
fclose(file);
% Discard the first three elements
v1 = v(4:end);

% Initialize the array that holds number of samples
numberOfSamples = [0 2:30];
% Initialize the array that holds number of peaks
numberOfPeaks = ones(1, 30);

% Find number of peaks for no filter option
numberOfPeaks(1) = length(findpeaks(v1));

for i = 2:30
    % Create coefficients for the moving average filter
    b = ones(1, i) / i;
    % Filter the data with moving average coefficients
    filtered = filter(b, 1, v1);
    % Find peaks from moving average filtered data
    peaks = findpeaks(filtered);
    % Save the total number of peaks
    numberOfPeaks(i) = length(peaks);
end

plot(numberOfSamples, numberOfPeaks);
title('Number of peaks vs changing N');