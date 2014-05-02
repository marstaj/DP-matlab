function myplot(ACC,GSM,USER,figNumber)
%MYPLOT Plots measured accelerometer, gsm and user data

    TOP = -25;
    BOTTOM = -110;
    TIME_BORDER_OFFSET = 15000; % In miliseconds

    % Set and clear figure for drawing
    figure(figNumber);
    clf(figNumber);
    
    % Draw graph
    plotUSER(USER);
    plotACC(ACC);
    gsmLegend = plotGSM(GSM);
    
    % Sliding window
    % plotAction(ACC);

    % Display time on X axis
    datetick('x','HH:MM:SS');
    
    % ----------- Limit axis -----------
    % Limit X axis and add some time on each side as graph margin
    left = datenum(getMatlabTime(GSM(1,6) - TIME_BORDER_OFFSET));
    right = datenum(getMatlabTime(GSM(end,6) + TIME_BORDER_OFFSET));
    xlim([left right]);
    ylim([BOTTOM TOP]); % Limit Y axis
    
    % ----------- Labels -----------
    xlabel('Time');
    ylabel('Signal strenght (dBm) and accelerometer values (lowered by 50)');
    
    % ----------- Legend -----------
    otherLegend = cell(4);
    otherLegend{1} = 'Zm?na ?seku';
    otherLegend{2} = 'Akcelerometr - osa X';
    otherLegend{3} = 'Akcelerometr - osa Y';
    otherLegend{4} = 'Akcelerometr - osa Z';
   
    cellLegend = cell(length(otherLegend) + length(gsmLegend),1);
    for i = 1 : length(otherLegend);
        cellLegend{i} = otherLegend{i};
    end
    for i = 1 : length(gsmLegend);
        cellLegend{length(otherLegend) + i} = gsmLegend{i};
    end
    legend(cellLegend, 'Location', 'SouthEast');
    
end