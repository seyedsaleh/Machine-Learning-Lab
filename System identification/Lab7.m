input = out.simout.Data(:, 2);
output = out.simout.Data(:, 1);

inputDelayed1 = [0; input(1 : end - 1)];
inputDelayed2 = [0; 0; input(1 : end - 2)];
outputDelayed1 = [0; output(1 : end - 1)];
outputDelayed2 = [0; 0; output(1 : end - 2)];

x = [input, inputDelayed1, inputDelayed2, outputDelayed1, outputDelayed2];
