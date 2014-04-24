function [ RESULT ] = removeDuplicates( DATA, column )
%REMOVEDUPLICATES Summary of this function goes here
%   Detailed explanation goes here

    [junk,index] = unique(DATA(:,column),'first');
    RESULT = DATA(sort(index),:);

end

