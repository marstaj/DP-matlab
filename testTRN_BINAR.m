outputs = sim(net_binar,TRN.');
outputs = outputs.';
s = size(TRN_BINAR_CLASS);
s = s(1);
for i = 1 : s
    maxiAtIndex = find(outputs(i,:)==max(outputs(i,:)));
    outputsNEW(i,:) = [0 0 0 0];
    outputsNEW(i,maxiAtIndex) = 1;
    
    R(i) = isequal(outputsNEW(i,:), TRN_BINAR_CLASS(i,:));
end
(sum(R) / length(R)) * 100