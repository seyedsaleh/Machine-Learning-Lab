%% Computational Intelligence Lab Report - Lab 5 - Mr. Amini
% Seyed Mohammadsaleh Mirzatabatabaei - 9623105

%% Clear recent data
close all; clc; clearvars;

%% Define variables
nos = 50;
X = linspace(-2, 2, nos);
noise = rand(1, nos) / 10;
T = sin(2 * pi * X) + noise;

%% RBF neural network
eg = 0.02; % sum-squared error goal
sc = 1;    % spread constant
RBFnet = newrb(X, T, eg, sc);
Y = RBFnet(X);

%% Plot network result and target
plot(X, T, '+');
hold on;
plot(X, Y);
legend({'target','predicted output'})
title('RBF neural network output and target');
xlabel('Input vector X');
ylabel('Target vector (T) and output (Y)');
