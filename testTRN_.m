outputs = sim(net,TRN.');
outputs = outputs.';
s = size(outputs);
% outputs = round(outputs);
for i = 1 : s(1)
    if outputs(i) < 1.55
        outputs(i) = 1;
    elseif outputs(i) < 2.55
         outputs(i) = 2;
    elseif outputs(i) < 3.55
        outputs(i) = 3;
    else 
        outputs(i) = 4;
    end
end
R = TRN_CLASS == outputs;
v = (sum(R) / length(R)) * 100