function [ FILTERED ] = ema(UNFILTERED)
%EMA Exponential moving-average filter

l = length(UNFILTERED);

FILTERED = zeros(l,1);

alpha = 0.9;
gFilt = UNFILTERED(1,1);

for i = 1 : l
    
    g = UNFILTERED(i,1);
    gFilt = (1 - alpha) * gFilt + alpha * g;
    
    FILTERED(i,1) = gFilt;
end

end