% Prepare file for reading
file = fopen('HW1_material/exampleSignal.csv', 'r');
% Read the file
v = fscanf(file, '%f');
% Close the file source
fclose(file);
% Discard the first three elements
v1 = v(4:end);
% Find peaks from data while clearing some of the noise
findpeaks(v1, 'MinPeakProminence', 1);
