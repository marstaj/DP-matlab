clear all

index = 1;

% [ACC, GSM, USER, filename] = myload('test', 2014,3,17,13,33,40);
% ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;

[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 13,36,29);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 13,48,1);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 14,0,9);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 14,9,26);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 14,24,9);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 14,41,20); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 14,50,43); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 15,56,6);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 16,2,17);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 16,12,32);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 16,20,38); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 16,28,44); % Chuze na pul
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyNexus/dolu', 2014,3,2, 16,36,16); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;

[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,13,35,45);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,13,48,1);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,14,0,9);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,14,24,7);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,14,41,15); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,14,50,39); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,14,9,24);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,15,56,1);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,16,12,28);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,16,2,17);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,16,20,33); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,16,28,42); % Chuze na pul
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/GalaxyDuos/dolu', 2014,3,2,16,36,15); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;

[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,13,36,26);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,13,47,58);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,14,0,6);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,14,23,38);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,14,41,15); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,14,50,39); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,14,9,22);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,15,56,2);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,16,12,34);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,16,2,12);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,16,20,36); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,16,28,47); % Chuze na pul
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/Prestigio/dolu', 2014,3,2,16,36,13); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;

[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,13,35,44);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,13,47,55);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,14,0,5);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,14,23,38);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,14,41,14); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,14,50,37); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,14,9,20);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,15,56,2);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,16,12,30);
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,16,2,14);  % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,16,20,32); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,16,28,41); % Chuze na pul
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;
[ACC, GSM, USER, filename] = myload('bigscans/SonyEricsson/dolu', 2014,3,2,16,36,14); % Chuze
ACC_SIGNALS{index,1} = ACC; ACC_SIGNALS{index,2} = USER; ACC_SIGNALS{index,3} = GSM; index = index + 1;

TRN = 0;
for i = 1 : length(ACC_SIGNALS)
    [tempTRN, tempTRN_CLASS, tempTRN_BINAR_CLASS, tempSS, tempSS_CLASS] = getFeaturesListFromSignal(ACC_SIGNALS{i, 1}, ACC_SIGNALS{i, 2}, ACC_SIGNALS{i, 3});
    
    if TRN == 0
        TRN = tempTRN;
        TRN_CLASS = tempTRN_CLASS;
%         TRN_BINAR_CLASS = tempTRN_BINAR_CLASS;
%         SS = tempSS;
%         SS_CLASS = tempSS_CLASS;
    else
        TRN = vertcat(TRN, tempTRN);
        TRN_CLASS = vertcat(TRN_CLASS, tempTRN_CLASS);
%         TRN_BINAR_CLASS = vertcat(TRN_BINAR_CLASS, tempTRN_BINAR_CLASS);
%         SS = vertcat(SS, tempSS);
%         SS_CLASS = vertcat(SS_CLASS, tempSS_CLASS);
    end
    
end

% Save features
% SAVE = [TRN, TRN_CLASS];
% dlmwrite('train_in_out.txt', SAVE);
% dlmwrite('train_in.txt', TRN);
% dlmwrite('train_out.txt', TRN_CLASS);