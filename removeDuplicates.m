function [ RESULT ] = removeDuplicates( DATA, column )
%REMOVEDUPLICATES Removes duplicates from ACC signal. Duplicates are values
%with the same timestamp

    [junk,index] = unique(DATA(:,column),'first');
    RESULT = DATA(sort(index),:);

end

