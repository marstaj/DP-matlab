% Test neural network from TRN data with regular rounding

outputs = sim(net,TRN.');
outputs = outputs.';
outputs = round(outputs);
R = TRN_CLASS == outputs;
(sum(R) / length(R)) * 100