function myplot(ACC,GSM,USER,figNumber)

    % Set and clear figure for drawing
    figure(figNumber);
    clf(figNumber);
    
    % Draw graph
    plotACC(ACC);
    plotUSER(USER);
    gsmLegend = plotGSM(GSM);

    % Display time on X axis
    datetick('x','HH:MM:SS');
    
    % Limit X axis and add 15 seconds on each side as graph margin
    left = datenum(getMatlabTime(GSM(1,6) - 15000));
    right = datenum(getMatlabTime(GSM(end,6) + 15000));
    xlim([left right]);
    ylim([-120 0]); % Limit Y axis
    
    % Labels
    xlabel('Time');
    ylabel('Signal strenght (dBm) and accelerometer values (lowered by 30)');
    
    % Legend
    cellLegend = cell(4 + length(gsmLegend),1);
    cellLegend{1} = 'Accelerometer X';
    cellLegend{2} = 'Accelerometer Y';
    cellLegend{3} = 'Accelerometer Z';
    cellLegend{4} = 'User action';
    for i = 1 : length(gsmLegend);
        cellLegend{4 + i} = gsmLegend{i};
    end
    legend(cellLegend, 'Location', 'SouthEast');
    
end