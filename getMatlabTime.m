function time_matlab = getMatlabTime(milisec)
    time_unix = milisec;
    time_reference = datenum('1970', 'yyyy'); 
    time_matlab = time_reference + time_unix / 8.64e7;
end