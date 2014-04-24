function [ FILTERED ] = sma3(UNFILTERED)
%LOWPASS Summary of this function goes here
%   Detailed explanation goes here

l = length(UNFILTERED);

FILTERED = zeros(l,1);

FILTERED(1,1) = UNFILTERED(1,1);
FILTERED(end,1) = UNFILTERED(end,1);

for i = 2 : (l - 1)
    
    pre = UNFILTERED(i-1,1);
    now = UNFILTERED(i,1);
    post = UNFILTERED(i+1,1);
    FILTERED(i,1) = mean([pre,now,post]);
    
end

end

