function [ TRN, TRN_CLASS, TRN_BINAR_CLASS, SS, SS_CLASS ] = getFeaturesListFromSignal( ACC, USER, GSM )
%GETFEATURESFROMSIGNAL Summary of this function goes here
%   Detailed explanation goes here

dlmwrite('acc.txt', ACC);

DATA = mergeACC(ACC, 'ADDITION');
DATA = removeDuplicates(DATA,2);
DATA = linData(DATA);

% DATA(:,1) = sma3(DATA(:,1));
% DATA(:,1) = sma3(sma3(sma3(DATA(:,1))));
% DATA(:,1) = sma5(DATA(:,1));
% DATA(:,1) = sma5(sma5(sma5(DATA(:,1))));
% DATA(:,1)  = ema(DATA(:,1));

ACC = DATA(:,1);
ACC = ACC(~ismember(1:size(ACC, 1), [257:length(ACC)]), :);
FEATURES = genFeaturesFromWindow(ACC);

ACTIVITIES = splitACCbyActivity(DATA, USER, 2);

start = false;

ssindex = 1;
index = 1;
for i = 1 : length(ACTIVITIES)
   
    WINS = genWindows(ACTIVITIES{i,1}, 256, 2);
    
    for j = 1 : length(WINS)
        
        WINDOW = WINS{j};
        FEATURES = genFeaturesFromWindow(WINDOW(:,1));
        
        TRN(index,1:length(FEATURES)) = FEATURES;
        TRN_CLASS(index,1) = ACTIVITIES{i,2};
        
%         % Get info for 01 network
%         if ACTIVITIES{i,2} == 1
%             TRN_BINAR_CLASS(index,1:4) = [1 0 0 0];
%         elseif ACTIVITIES{i,2} == 2
%             TRN_BINAR_CLASS(index,1:4) = [0 1 0 0];
%         elseif ACTIVITIES{i,2} == 3
%             TRN_BINAR_CLASS(index,1:4) = [0 0 1 0];
%         else 
%             TRN_BINAR_CLASS(index,1:4) = [0 0 0 1];
%         end
%         
%         % Get signal strenght
%         if start == false && (ACTIVITIES{i,2} == 1 || ACTIVITIES{i,2} == 4)
%             start = true;
%         end
%         if start == true
%         meanTime = mean(WINDOW(:,2));
%         signal = interp1(GSM(:,6),GSM(:,4),meanTime);
%         bts = interp1(GSM(:,6),GSM(:,2),meanTime);
%         SS(ssindex, 1) = signal;
%         SS(ssindex, 2) = bts;
% %         if ssindex == 1
% %             SS(ssindex, 3) = 90;
% %         else
% %             SS(ssindex, 3) = SS_CLASS(ssindex - 1, 1);
% %         end
%         SS(ssindex, 3) = ACTIVITIES{i,2};
%         
%         if meanTime >= USER(7,2) && meanTime < USER(8,2)
%             timeAmount = USER(8,2) - USER(7,2);
%             myTime = meanTime - USER(7,2);
%             SS_CLASS(ssindex, 1) = 90 - ((myTime * 50) / timeAmount);
%         elseif meanTime >= USER(8,2) && meanTime < USER(9,2)
%             timeAmount = USER(9,2) - USER(8,2);
%             myTime = meanTime - USER(8,2);
%             SS_CLASS(ssindex, 1) = 40 - ((myTime * 30) / timeAmount);
%         elseif meanTime >= USER(9,2) && meanTime < USER(10,2)
%             timeAmount = USER(10,2) - USER(9,2);
%             myTime = meanTime - USER(9,2);
%             SS_CLASS(ssindex, 1) = 10 - ((myTime * 10) / timeAmount);
%         else
%             SS_CLASS(ssindex, 1) = 0;
%             ssindex = ssindex - 1;
%         end
%         
%         
%         ssindex = ssindex + 1;
%         end
        
        index = index + 1;
    end
    
end

TRN_BINAR_CLASS = 0; SS = 0; SS_CLASS  = 0;

end

