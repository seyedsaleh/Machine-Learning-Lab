input = [out.simout1.Data(:, 2) ; out.simout2.Data(:, 2)];
output = [out.simout1.Data(:, 1) ; out.simout2.Data(:, 1)];

inputDelayed1 = [0; input(1 : end - 1)];
inputDelayed2 = [0; 0; input(1 : end - 2)];
inputDelayed3 = [0; 0; 0; input(1 : end - 3)];
outputDelayed1 = [0; output(1 : end - 1)];
outputDelayed2 = [0; 0; output(1 : end - 2)];
outputDelayed3 = [0; 0; 0; output(1 : end - 3)];

x3 = [input, inputDelayed1, inputDelayed2, inputDelayed3, outputDelayed1, outputDelayed2, outputDelayed3];
x2 = [input, inputDelayed1, inputDelayed2, outputDelayed1, outputDelayed2];  
x1 = [input, inputDelayed1, outputDelayed1];

