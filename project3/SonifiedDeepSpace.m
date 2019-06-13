clc;clear;clear sound;
% Read the image file into a matrix
img = imread('Hubble-Massive-Panorama.png');
% Convert the image to black&white
bw = rgb2gray(img);
% Binarize grayscale image
bin = imbinarize(bw);

result = [];

% Iterate over 1024 columns
for col = 1:1024
    % Initialize the vector that holds amplitudes
    wave = zeros(900, 1);
    % Iterate over 900 pixels in the column
    for row = 1:900
        % if pixel is not black
        if bin(row, col) ~= 0
            % Create amplitude as index of the part
            wave(row) = ceil(row / 90);
        end
    end
    % Convert column spectrum to time domain
    s = ifft(wave, 'symmetric')';
    % Concatenate spectra
    result = [result repelem(s, 2)];
end

% Create a wav file from resulting signal
audiowrite('SonifiedDeepSpace.wav', result, 1800);

% Play the created sound
sound(result, 1800);

% Data is duplicated because sound function doesn't allow for 900 sample
% rate so I used 1800 sample rate with duplicated data