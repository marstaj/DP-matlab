function [ FILTERED ] = sma5(UNFILTERED)
%SMA5 5-point moving average filter

l = length(UNFILTERED);

FILTERED = zeros(l,1);

FILTERED(1,1) = UNFILTERED(1,1);
FILTERED(2,1) = mean([UNFILTERED(1,1),UNFILTERED(2,1),UNFILTERED(3,1)]);
FILTERED(end-1,1) = mean([UNFILTERED(end-2,1),UNFILTERED(end-1,1),UNFILTERED(end,1)]);
FILTERED(end,1) = UNFILTERED(end,1);

for i = 3 : (l - 2)
    
    pre1 = UNFILTERED(i-2,1);
    pre = UNFILTERED(i-1,1);
    now = UNFILTERED(i,1);
    post = UNFILTERED(i+1,1);
    post1 = UNFILTERED(i+2,1);
    
    FILTERED(i,1) = mean([pre1,pre,now,post,post1]);
    
end

end

