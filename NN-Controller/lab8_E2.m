input1 = out.simout1.Data(:, 2);
output1 = out.simout1.Data(:, 1);
input1Delayed1 = [0; input1(1 : end - 1)];
output1Delayed1 = [0; output1(1 : end - 1)];

input2 = out.simout2.Data(:, 2);
output2 = out.simout2.Data(:, 1);
input2Delayed1 = [0; input2(1 : end - 1)];
output2Delayed1 = [0; output2(1 : end - 1)];

x1 = [input1Delayed1, output1, output1Delayed1];
target1 = input1;

x2 = [input2Delayed1, output2, output2Delayed1];
target2 = input2;