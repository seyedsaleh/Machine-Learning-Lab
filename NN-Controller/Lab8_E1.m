input = out.simout.Data(:, 2);
output = out.simout.Data(:, 1);
inputDelayed1 = [0; input(1 : end - 1)];
outputDelayed1 = [0; output(1 : end - 1)];

x = [inputDelayed1, output, outputDelayed1];
target = input;