input = out.simout.Data(:, 5);
output = out.simout.Data(:, 1:4);

outputDelayed1 = [zeros(1, 4) ; output(1 : end - 1, :)];
outputDelayed2 = [zeros(2, 4) ; output(1 : end - 2, :)];
outputDelayed3 = [zeros(3, 4) ; output(1 : end - 3, :)];
inputDelayed1 = [0; input(1 : end - 1)];
inputDelayed2 = [0; 0; input(1 : end - 2)];
inputDelayed3 = [0; 0; 0; input(1 : end - 3)];
 
x = [input, inputDelayed1, inputDelayed2, inputDelayed3,...
    outputDelayed1, outputDelayed2, outputDelayed3];