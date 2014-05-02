function myplotload(folder, year, month, day, hour, minute, second, figure)
%MYPLOTLOAD Loads and plots measured accelerometer, gsm and user data,
%saves graph to png.
    
    % load data
    [ACC, GSM, USER, filename] = myload(folder, year, month, day, hour, minute, second);
    
    % plot data
    myplot(ACC, GSM, USER, figure);
    
    % save graph to png
    exportToPng(gcf, strcat(filename, '_graph'), 1260, 690);
end