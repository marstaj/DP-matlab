function plotAction(ACC)
    
    DATA = mergeACC(ACC, 'RMS1');
    DATA = removeDuplicates(DATA,2);
    DATA = linData(DATA);
    
    WINDOWS = genWindows(DATA, 256, 2);
    
    numOfWindows = length(WINDOWS);
    
    RESULT = cell(numOfWindows,1);
    POINTS = zeros(1,numOfWindows);
    
    index = 1;
    for i = 1 : numOfWindows
         WINDOW = WINDOWS{i};
         
        Y = abs(fft(WINDOW));
        
        Y = Y(~ismember(1:size(Y, 1), [1]), :);
        
        if (max(Y) > 100) 
%             RESULT{index} = strcat('WALK      : ', int2str(iStart),'-',int2str(iEnd));
              RESULT{index} = 'W';
        else
%             RESULT{index} = strcat('ESCALATOR : ', int2str(iStart),'-',int2str(iEnd));
              RESULT{index} = 'E';
        end
        
        if mod(index,2) == 1
            POINTS(index) = -47;
        else
            POINTS(index) = -50;
        end
        
        index = index + 1;
    end
    
    resultTime = linspace(ACC(1,4),ACC(end,4),numOfWindows);
    mTime = datenum(getMatlabTime(resultTime));

    hold on
	plot(mTime, POINTS, '.')
    text(mTime, POINTS, RESULT,'VerticalAlignment','top','HorizontalAlignment','center');
    hold off
end