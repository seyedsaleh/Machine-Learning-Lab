%% Computational Intelligence Lab Report - Lab 1 - Prof. Amini
% Seyed Mohammadsaleh Mirzatabatabaei - 9623105

%% Clear recent data
close all; clc; clearvars;

%% Test

% Report test
M = [1 0 sin(pi/4); 0 1 sin(pi/2); 1 0 1];
sigmatrix(M)
dsigmatrix(M)

% Exercise test
tanhmatrix(rand(3))

%% Report Functions

% Sigmoid and dsigmoid matrix
function sigmat = sigmoid(mat) 
    sigmat = (2 ./ (1 + exp(-mat))) - 1;
end

function dsigmat = dsigmoid(mat) 
    dsigmat = (1 - sigmoid(mat) .^ 2) ./ 2;
end

% Sum of sigmoid and dsigmoid matrix elements
function sigsum = sigmatrix(mat) 
    sigsum = sum(sigmoid(mat), 'all');
end

function dsigsum = dsigmatrix(mat) 
    dsigsum = sum(dsigmoid(mat), 'all');
end

%% Exercise Function

% Tanh matrix
function tanhsum = tanhmatrix(mat) 
    tanhsum = sum((exp(mat) - exp(-mat)) ./ (exp(mat) + exp(-mat)), 'all');
end

      