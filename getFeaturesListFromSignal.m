function [ TRN, TRN_CLASS ] = getFeaturesListFromSignal( ACC, USER, GSM )
%GETFEATURESLISTFROMSIGNAL Generates features list from acc, gsm signal and
%user data

DATA = mergeACC(ACC, 'RMS1');
DATA = removeDuplicates(DATA,2);
DATA = linData(DATA);

% DATA(:,1) = sma3(DATA(:,1));
% DATA(:,1) = sma3(sma3(sma3(DATA(:,1))));
% DATA(:,1) = sma5(DATA(:,1));
% DATA(:,1) = sma5(sma5(sma5(DATA(:,1))));
DATA(:,1)  = ema(DATA(:,1));

ACTIVITIES = splitACCbyActivity(DATA, USER, 2);

index = 1;
for i = 1 : length(ACTIVITIES)
   
    WINS = genWindows(ACTIVITIES{i,1}, 256, 2);
    
    for j = 1 : length(WINS)
        
        WINDOW = WINS{j};
        FEATURES = genFeaturesFromWindow(WINDOW(:,1));
        
        TRN(index,1:length(FEATURES)) = FEATURES;
        TRN_CLASS(index,1) = ACTIVITIES{i,2};
        
        index = index + 1;
    end
    
end

end

