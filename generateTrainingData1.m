% Generates training data from one cellphone data for clasification on
% another cellphone data

clear all

index = 1;

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

TRN = 0;
for i = 1 : length(ACC_SIGNALS)
    [tempTRN, tempTRN_CLASS] = getFeaturesListFromSignal(ACC_SIGNALS{i, 1}, ACC_SIGNALS{i, 2}, ACC_SIGNALS{i, 3});
    
    if TRN == 0
        TRN = tempTRN;
        TRN_CLASS = tempTRN_CLASS;
    else
        TRN = vertcat(TRN, tempTRN);
        TRN_CLASS = vertcat(TRN_CLASS, tempTRN_CLASS);
    end
    
end

TRN1 = TRN;
TRN_CLASS1 = TRN_CLASS;

index = 1;

ACC_SIGNALS = cell(0,3);
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

TRN = 0;
for i = 1 : length(ACC_SIGNALS)
    [tempTRN, tempTRN_CLASS] = getFeaturesListFromSignal(ACC_SIGNALS{i, 1}, ACC_SIGNALS{i, 2}, ACC_SIGNALS{i, 3});
    
    if TRN == 0
        TRN = tempTRN;
        TRN_CLASS = tempTRN_CLASS;
    else
        TRN = vertcat(TRN, tempTRN);
        TRN_CLASS = vertcat(TRN_CLASS, tempTRN_CLASS);
    end
    
end