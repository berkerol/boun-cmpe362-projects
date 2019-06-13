% Read the image file into a matrix
img = imread('HW1_material/lena.png');
% Convert the image to black&white
bw = rgb2gray(img);
% Find mean of matrix
m = mean2(bw);
% Find standard deviation of matrix
s = std2(bw);
% Find the maximum and its index in column representation
[vmax, imax] = max(bw(:));
% Find row and column of maximum
[rmax, cmax] = ind2sub(size(bw), imax);
% Find the minimum and its index in column representation
[vmin, imin] = min(bw(:));
% Find row and column of minimum
[rmin, cmin] = ind2sub(size(bw), imin);
% Print the results
disp(['Mean: ' num2str(m)]);
disp(['Standard Deviation: ' num2str(s)]);
disp(['Maximum value: ' num2str(vmax)]);
disp(['Index of maximum in column representation: ' num2str(imax)]);
disp(['Row of maximum: ' num2str(rmax)]);
disp(['Column of maximum: ' num2str(cmax)]);
disp(['Minimum value: ' num2str(vmin)]);
disp(['Index of minimum in column representation: ' num2str(imin)]);
disp(['Row of minimum: ' num2str(rmin)]);
disp(['Column of minimum: ' num2str(cmin)]);
