function [ACC, GSM, USER, filename] = myload(folder, year, month, day, hour, minute, second)
%MYLOAD Loads measured accelerometer, gsm and user data from file

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
    
    ACC = load(ACCfilename);
    GSM = load(GSMfilename);
    USER = load(USERfilename);
end