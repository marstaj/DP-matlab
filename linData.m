function [ NEW_ACC ] = linData( ACC )
%LINDATA Summary of this function goes here
%   Detailed explanation goes here

    oldStartTime = ACC(1,2);
    oldEndTime = ACC(end,2);
    
    newTimes = oldStartTime : 8 : oldEndTime;
   
    newVals = interp1(ACC(:,2),ACC(:,1),newTimes);
    
    NEW_ACC(1:length(newTimes),1) = newVals;
    NEW_ACC(1:length(newTimes),2) = newTimes;
    
%     NEW_ACC(1) = ACC(1);
%     
%     o1 = oldStartTime;
%     o2 = oldStartTime;
%     n = oldStartTime;
%     
%     for i = 2 : length(NEW_ACC)
%         
%         n = newTimes(i);
%         
%         while TRUE
%             if o1 < n
%                 o1 = 
%             end
%             
%         end
%         
%     end
end