function name = nameOfBTS(btsNumber)

    fid = fopen('eurotel.csv', 'rt');
    btsNames = textscan(fid, '%d %d %s', 'CollectOutput', true, 'Delimiter', ';');
    fclose(fid);
    
    name = num2str(btsNumber);
    
    for i = 1: length(btsNames{1})
        if btsNames{1}(i,1) == btsNumber
            name = cellstr(btsNames{2}(i,1));
            name = name{1};
            break;
        end
    end
    
    if i == length(btsNames{1})
        fid = fopen('etumts.csv', 'rt');
        btsNames = textscan(fid, '%d %d %s', 'CollectOutput', true, 'Delimiter', ';');
        fclose(fid);
        
        for i = 1: length(btsNames{1})
            if btsNames{1}(i,1) == btsNumber
               name = cellstr(btsNames{2}(i,1));
               name = name{1};
               break;
            end
        end
    end
end