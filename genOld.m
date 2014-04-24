clear all

% [ACC, GSM, USER, filename] = myload('newscans/dolu', 2014,2,17, 16,48,43, 1);
[ACC, GSM, USER, filename] = myload('Predvanocni_NEXUS_Dolu', 2013,12,20, 16,17,47);


ACTIVITIES = splitACCbyActivity(ACC, USER);

index = 1;
for i = 1 : length(ACTIVITIES)
   
    WINS = genWindows(ACTIVITIES{i,1}, 256, 2);
    
    for j = 1 : length(WINS)
        
        WINDOW = WINS{j};
        WINDOW = mergeACC(WINDOW, 'RMS1');
%         WINDOW = sma5(sma5(sma5(WINDOW)));
%         WINDOW = ema(WINDOW);
        FEATURES = genFeaturesFromWindow(WINDOW(:,1));
        
        TRN(index,1:length(FEATURES)) = FEATURES;
        TRN_CLASS(index,1) = ACTIVITIES{i,2};
        
        index = index + 1;
    end
    
end

% Save features
SAVE = [TRN, TRN_CLASS];
dlmwrite('train_in_out.txt', SAVE);
dlmwrite('train_in.txt', TRN);
dlmwrite('train_out.txt', TRN_CLASS);

% TESTING
right = 0;
wrong = 0;
for i = 1 : length(TRN)
    WINDOW = TRN(i,:);
    
    if WINDOW(1,1) > 100
        TEST(i,1) = 1;
    else
        TEST(i,1) = 3;
    end
    
    if ((TRN_CLASS(i,1) == 1 || TRN_CLASS(i,1) == 2) && TEST(i,1) == 1)
        right = right + 1;
    elseif (TRN_CLASS(i,1) == 3 && TEST(i,1) == 3)
        right = right + 1;
    else
        wrong = wrong + 1;
    end

%     if TEST(i,1) == TRN_CLASS(i,1)
%         right = right + 1;
%     else
%         wrong = wrong + 1;
%     end
end

TEST = [TRN_CLASS, TEST];

Correct = (right / (right + wrong)) * 100

plot(TRN(:,1))

