function [ RESULT ] = genWindows( MERGED_ACC, windowSize, overlap )
%SPLITACCBYACTION Summary of this function goes here
%   Detailed explanation goes here

    % windowSize must be modulo overlap
    if mod(windowSize, overlap) ~= 0
        error('Window size must be dividable by overlap without rest')
    end

    numOfValues = length(MERGED_ACC);

    % Calculate final number of windows
    % numOfWindows = fix(numOfValues/windowSize); % OLD
    % numOfWindows = numOfWindows + fix((numOfValues-windowSize/2)/windowSize); % OLD
    numOfWindows = 0;
    part = windowSize / overlap;
    for i = 1 : overlap
        numOfWindows = numOfWindows + fix((numOfValues- (i-1)*part)/windowSize);
    end
    
    RESULT = cell(numOfWindows,1);
    
    index = 1;
    iStart = 1;
    iEnd = windowSize;
    while iEnd <= numOfValues
        WINDOW = MERGED_ACC(iStart:iEnd,:);
        
        RESULT{index,1} = WINDOW;
        
        iStart = iStart + windowSize / overlap;
        iEnd = iEnd + windowSize / overlap;
        index = index + 1;
    end
end

