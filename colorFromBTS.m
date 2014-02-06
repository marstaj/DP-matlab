function color = colorFromBTS(btsCode)

    btsCode = string2hash(int2str(btsCode*100), 'sdbm');
      
    r = bitand(btsCode, hex2dec('FF0000'));
    g = bitand(btsCode, hex2dec('00FF00'));
    b = bitand(btsCode, hex2dec('0000FF'));
      
    red = bitsrl(int64(r), int8(16));
    green = bitsrl(int64(g), int8(8));
    blue = b;
      
    color = [double(red), double(green), double(blue)];
    color = color/255;

end