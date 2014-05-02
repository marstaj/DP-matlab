function [ RESULT ] = mergeACC(ACC, type);
%MERGEACC Merges 3-axis accelerometer data to 1-axis signal

    numRows = length(ACC);
    RESULT = zeros(numRows, 2);

    if strcmp(type, 'RMS') == 1
        for i = 1  : numRows
            RESULT(i,1) = sqrt(mean([ACC(i,1)^2,ACC(i,2)^2,ACC(i,3)^2]));
            RESULT(i,2) = ACC(i,4);
        end
        
    elseif strcmp(type, 'ADDITION') == 1
        for i = 1  : numRows
           RESULT(i,1) = ACC(i,1) + ACC(i,2) + ACC(i,3);
           RESULT(i,2) = ACC(i,4);
        end
    
    elseif strcmp(type, 'RMS1') == 1
        % RMS   without means  
        for i = 1  : numRows
            RESULT(i,1) = sqrt(ACC(i,1)^2 + ACC(i,2)^2 + ACC(i,3)^2);
            RESULT(i,2) = ACC(i,4);
        end
    else
        error('Second parametr must be "RMS", "RMS1" or "ADDITION"')
    end
    
end