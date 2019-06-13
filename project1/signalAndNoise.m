% Problem 1
x = linspace(-100, 100);
y1 = sin(x);
y2 = sin(50 * x);
y3 = 50 * sin(x);
y4 = sin(x) + 50;
y5 = sin(x + 50);
y6 = 50 * sin(50 * x);
y7 = x .* sin(x);
y8 = sin(x) ./ x;
subplot(4, 2, 1);
plot(x, y1);
title('y1 = sin(x)');
subplot(4, 2, 2);
plot(x, y2);
title('y2 = sin(50 * x)');
subplot(4, 2, 3);
plot(x, y3);
title('y3 = 50 * sin(x)');
subplot(4, 2, 4);
plot(x, y4);
title('y4 = sin(x) + 50');
subplot(4, 2, 5);
plot(x, y5);
title('y5 = sin(x + 50)');
subplot(4, 2, 6);
plot(x, y6);
title('y6 = 50 * sin(50 * x)');
subplot(4, 2, 7);
plot(x, y7);
title('y7 = x .* sin(x)');
subplot(4, 2, 8);
plot(x, y8);
title('y8 = sin(x) ./ x');
figure;

% Problem 2
x = linspace(-20, 20);
y1 = sin(x);
y2 = sin(50 * x);
y3 = 50 * sin(x);
y4 = sin(x) + 50;
y5 = sin(x + 50);
y6 = 50 * sin(50 * x);
y7 = x .* sin(x);
y8 = sin(x) ./ x;
y9 = y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8;
subplot(5, 2, 1);
plot(x, y1);
title('y1 = sin(x)');
subplot(5, 2, 2);
plot(x, y2);
title('y2 = sin(50 * x)');
subplot(5, 2, 3);
plot(x, y3);
title('y3 = 50 * sin(x)');
subplot(5, 2, 4);
plot(x, y4);
title('y4 = sin(x) + 50');
subplot(5, 2, 5);
plot(x, y5);
title('y5 = sin(x + 50)');
subplot(5, 2, 6);
plot(x, y6);
title('y6 = 50 * sin(50 * x)');
subplot(5, 2, 7);
plot(x, y7);
title('y7 = x .* sin(x)');
subplot(5, 2, 8);
plot(x, y8);
title('y8 = sin(x) ./ x');
subplot(5, 2, [9 10]);
plot(x, y9);
title('y9 = y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8');
figure;

% Problem 3
x = linspace(-20, 20, 41);
z = randn(1, 41);
y10 = z;
y11 = z + x;
y12 = z + sin(x);
y13 = z .* sin(x);
y14 = x .* sin(z);
y15 = sin(x + z);
y16 = z .* sin(50 * x);
y17 = sin(x + 50 * z);
y18 = sin(x) ./ z;
y19 = y11 + y12 + y13 + y14 + y15 + y16 + y17 + y18;
subplot(5, 2, 1);
plot(x, y10);
title('y10 = z');
subplot(5, 2, 2);
plot(x, y11);
title('y11 = z + x');
subplot(5, 2, 3);
plot(x, y12);
title('y12 = z + sin(x)');
subplot(5, 2, 4);
plot(x, y13);
title('y13 = z .* sin(x)');
subplot(5, 2, 5);
plot(x, y14);
title('y14 = x .* sin(z)');
subplot(5, 2, 6);
plot(x, y15);
title('y15 = sin(x + z)');
subplot(5, 2, 7);
plot(x, y16);
title('y16 = z .* sin(50 * x)');
subplot(5, 2, 8);
plot(x, y17);
title('y17 = sin(x + 50 * z)');
subplot(5, 2, 9);
plot(x, y18);
title('y18 = sin(x) ./ z');
subplot(5, 2, 10);
plot(x, y19);
title('y19 = y11 + y12 + y13 + y14 + y15 + y16 + y17 + y18');
figure;

% Problem 4
z = rand(1, 41);
y20 = z;
y21 = z + x;
y22 = z + sin(x);
y23 = z .* sin(x);
y24 = x .* sin(z);
y25 = sin(x + z);
y26 = z .* sin(50 * x);
y27 = sin(x + 50 * z);
y28 = sin(x) ./ z;
y29 = y21 + y22 + y23 + y24 + y25 + y26 + y27 + y28;
subplot(5, 2, 1);
plot(x, y20);
title('y20 = z');
subplot(5, 2, 2);
plot(x, y21);
title('y21 = z + x');
subplot(5, 2, 3);
plot(x, y22);
title('y22 = z + sin(x)');
subplot(5, 2, 4);
plot(x, y23);
title('y23 = z .* sin(x)');
subplot(5, 2, 5);
plot(x, y24);
title('y24 = x .* sin(z)');
subplot(5, 2, 6);
plot(x, y25);
title('y25 = sin(x + z)');
subplot(5, 2, 7);
plot(x, y26);
title('y26 = z .* sin(50 * x)');
subplot(5, 2, 8);
plot(x, y27);
title('y27 = sin(x + 50 * z)');
subplot(5, 2, 9);
plot(x, y28);
title('y28 = sin(x) ./ z');
subplot(5, 2, 10);
plot(x, y29);
title('y29 = y21 + y22 + y23 + y24 + y25 + y26 + y27 + y28');
figure;

% Problem 5
% Generate 10000 Gaussian distributed random numbers with mean 0, variance 1
r1 = 1 * randn(1, 10000) + 0;
% Generate 10000 Gaussian distributed random numbers with mean 0, variance 4
r2 = 2 * randn(1, 10000) + 0;
% Generate 10000 Gaussian distributed random numbers with mean 0, variance 16
r3 = 4 * randn(1, 10000) + 0;
% Generate 10000 Gaussian distributed random numbers with mean 0, variance 256
r4 = 16 * randn(1, 10000) + 0;
% Draw all histograms into a 2x2 subplot with their titles
subplot(2, 2, 1);
histogram(r1);
title('r1 = 1 * randn(1, 10000) + 0');
subplot(2, 2, 2);
histogram(r2);
title('r2 = 2 * randn(1, 10000) + 0');
subplot(2, 2, 3);
histogram(r3);
title('r3 = 4 * randn(1, 10000) + 0');
subplot(2, 2, 4);
histogram(r4);
title('r4 = 16 * randn(1, 10000) + 0');
figure;

% Problem 6
% Generate 10000 Gaussian distributed random numbers with mean 10, variance 1
r6 = 1 * randn(1, 10000) + 10;
% Generate 10000 Gaussian distributed random numbers with mean 20, variance 4
r7 = 2 * randn(1, 10000) + 20;
% Generate 10000 Gaussian distributed random numbers with mean -10, variance 1
r8 = 1 * randn(1, 10000) - 10;
% Generate 10000 Gaussian distributed random numbers with mean -20, variance 4
r9 = 2 * randn(1, 10000) - 20;
% Draw all histograms into a 2x2 subplot with their titles
subplot(2, 2, 1);
histogram(r6);
title('r6 = 1 * randn(1, 10000) + 10');
subplot(2, 2, 2);
histogram(r7);
title('r7 = 2 * randn(1, 10000) + 20');
subplot(2, 2, 3);
histogram(r8);
title('r8 = 1 * randn(1, 10000) - 10');
subplot(2, 2, 4);
histogram(r9);
title('r9 = 2 * randn(1, 10000) - 20');
figure;

% Problem 7
% Generate 10000 uniformly distributed random numbers with mean 0, variance 1
r11 = sqrt(12) * 1 * (rand(1, 10000) - 0.5) + 0;
% Generate 10000 uniformly distributed random numbers with mean 0, variance 4
r21 = sqrt(12) * 2 * (rand(1, 10000) - 0.5) + 0;
% Generate 10000 uniformly distributed random numbers with mean 0, variance 16
r31 = sqrt(12) * 4 * (rand(1, 10000) - 0.5) + 0;
% Generate 10000 uniformly distributed random numbers with mean 0, variance 256
r41 = sqrt(12) * 16 * (rand(1, 10000) - 0.5) + 0;
% Draw all histograms into a 2x2 subplot with their titles
subplot(2, 2, 1);
histogram(r11);
title('r11 = sqrt(12) * 1 * (rand(1, 10000) - 0.5) + 0');
subplot(2, 2, 2);
histogram(r21);
title('r21 = sqrt(12) * 2 * (rand(1, 10000) - 0.5) + 0');
subplot(2, 2, 3);
histogram(r31);
title('r31 = sqrt(12) * 4 * (rand(1, 10000) - 0.5) + 0');
subplot(2, 2, 4);
histogram(r41);
title('r41 = sqrt(12) * 16 * (rand(1, 10000) - 0.5) + 0');
figure;

% Problem 8
% Generate 10000 uniformly distributed random numbers with mean 10, variance 1
r61 = sqrt(12) * 1 * (rand(1, 10000) - 0.5) + 10;
% Generate 10000 uniformly distributed random numbers with mean 20, variance 4
r71 = sqrt(12) * 2 * (rand(1, 10000) - 0.5) + 20;
% Generate 10000 uniformly distributed random numbers with mean -10, variance 1
r81 = sqrt(12) * 1 * (rand(1, 10000) - 0.5) - 10;
% Generate 10000 uniformly distributed random numbers with mean -20, variance 4
r91 = sqrt(12) * 2 * (rand(1, 10000) - 0.5) - 20;
% Draw all histograms into a 2x2 subplot with their titles
subplot(2, 2, 1);
histogram(r61);
title('r61 = sqrt(12) * 1 * (rand(1, 10000) - 0.5) + 10');
subplot(2, 2, 2);
histogram(r71);
title('r71 = sqrt(12) * 2 * (rand(1, 10000) - 0.5) + 20');
subplot(2, 2, 3);
histogram(r81);
title('r81 = sqrt(12) * 1 * (rand(1, 10000) - 0.5) - 10');
subplot(2, 2, 4);
histogram(r91);
title('r91 = sqrt(12) * 2 * (rand(1, 10000) - 0.5) - 20');
