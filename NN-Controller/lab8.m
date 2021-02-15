input = out.simout.Data(:, 1);
output = out.simout.Data(:, 2);

inputDelayed1 = [0; input(1 : end - 1)];
outputDelayed1 = [0; output(1 : end - 1)];

x = [outputDelayed1, input, inputDelayed1];
target = output;