function [ NEW_ACC ] = linData( ACC )
%LINDATA Linear iterpolation of accelerometer data

    oldStartTime = ACC(1,2);
    oldEndTime = ACC(end,2);
    
    newTimes = oldStartTime : 8 : oldEndTime;
   
    newVals = interp1(ACC(:,2),ACC(:,1),newTimes);
    
    NEW_ACC(1:length(newTimes),1) = newVals;
    NEW_ACC(1:length(newTimes),2) = newTimes;
   
end