function myload(folder, year, month, day, hour, minute, second, figure)

    year = int2str(year);
    month = int2str(month);
    day = int2str(day);
    hour = int2str(hour);
    minute = int2str(minute);
    second = int2str(second);

    filename = strcat(folder,'/',year,'-',month,'-',day,'-',hour,'-',minute,'-',second);
    
    ACCfilename = strcat(filename, '_sensor_log.txt');
    GSMfilename = strcat(filename, '_gsm_log.txt');
    USERfilename = strcat(filename, '_user_log.txt');
    
    myplot(load(ACCfilename),load(GSMfilename),load(USERfilename), figure);
    
    exportToPng(gcf, strcat(filename, '_graph'), 1260, 690);
end