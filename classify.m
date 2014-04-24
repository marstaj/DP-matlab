function [ Results ] = classify( net, input )

%     [m n] = size(input);
%     ymax = 1;
%     ymin = -1;
%     for i=1:m
%        xmax = max(input(i,:));
%        xmin = min(input(i,:));
%        for j=1:n
%          input(i,j) = (ymax-ymin)*(input(i,j)-xmin)/(xmax-xmin) + ymin;
%        end
%     end
    
    a = net.IW{1} * input;
    b = a + net.b{1};
    y1 = tansig(b);
    
    c = net.LW{2} * y1;
    d = c + net.b{2};
    Results = purelin(d);
    

%     y1 = tansig(net.IW{1} * input + net.b{1});
%     Results = purelin(net.LW{2} * y1 + net.b{2});
         
%     ymax = 1;
%     ymin = 0;
%     xmax = 1;
%     xmin = -1;
%     Results = (ymax-ymin)*(Results-xmin)/(xmax-xmin) + ymin;
end