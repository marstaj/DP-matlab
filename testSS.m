outputs = sim(net,SS.');
outputs = outputs.';
outputs = round(outputs);
R = SS_CLASS - outputs;
R