function myplotload(folder, year, month, day, hour, minute, second, figure)

    [ACC, GSM, USER, filename] = myload(folder, year, month, day, hour, minute, second);
    
    myplot(ACC, GSM, USER, figure);
    
    exportToPng(gcf, strcat(filename, '_graph'), 1260, 690);
end