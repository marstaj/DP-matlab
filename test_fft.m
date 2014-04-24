clear all

ACC = load('test/2014-3-17-13-33-40_sensor_log.txt');
% ACC = load('newscans/dolu/2014-2-17-16-48-43_sensor_log.txt');
% ACC = load('Predvanocni_NEXUS_Dolu/2013-12-20-16-17-47_sensor_log.txt');

% Crop to 256 samples window
tmpL = length(ACC);
% ACC = ACC(~ismember(1:size(ACC, 1), [1:10000, 10257:tmpL]), :); % Eskalator
% ACC = ACC(~ismember(1:size(ACC, 1), [1:5000, 5257:tmpL]), :); % Chuze
% ACC = ACC(~ismember(1:size(ACC, 1), [1:128, 385:tmpL]), :);

%-----------------------------------
numRows = length(ACC);

% Merging 3 axis together to 1
% RMS    
% DATA = mergeACC(ACC, 'RMS');

% RMS   without means  
DATA = mergeACC(ACC, 'RMS1');
DATA = removeDuplicates(DATA,2);
DATA = linData(DATA);
DATA(:,1)  = ema(DATA(:,1));
DATA = DATA(~ismember(1:size(DATA, 1), [257:length(DATA)]), :);

%-----------------------------------

% DATA = RMS;
DATA = DATA(:,1);

% Different kinds of smoothing and noise reduction
% E = ema(DATA);
% S3 = sma3(DATA);
% S5 = sma5(DATA);
% S555 = sma5(sma5(sma5(DATA)));
% DATA = S555;

DATA = fft(DATA);
DATA = abs(DATA);

% Cropping left huge spike.. what is that?
DATA = DATA(~ismember(1:size(DATA, 1), [1]), :);
ACC = ACC(~ismember(1:size(ACC, 1), [1]), :);

%-----------------------------------

max(DATA)

% mTime = datenum(getMatlabTime(ACC(:,4)));

% Time in miliseconds
mTime = ACC(:,4) - ACC(1,4);

% % plot(mTime,DATA)
% plot(DATA)

% datetick('x','HH:MM:SS');
% left = datenum(getMatlabTime(ACC(1,4) - 5000));
% right = datenum(getMatlabTime(ACC(end,4) + 5000));
% xlim([left right]);
% ylim([-5 20]);

% xlim([7.356476597573032*10^5 7.356476598044098*10^5]);

