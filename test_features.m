clear all;

ACC = load('newscans/2014-2-17-16-48-43_sensor_log.txt');

% Crop to 256 samples window
tmpL = length(ACC);
ACC = ACC(~ismember(1:size(ACC, 1), [1:10000, 10257:tmpL]), :); % Eskalator
% ACC = ACC(~ismember(1:size(ACC, 1), [1:5000, 5257:tmpL]), :); % Chuze

%-----------------------------------
numRows = length(ACC);

% Merging 3 axis together to 1
% RMS    
% DATA = mergeACC(ACC, 'RMS');

% RMS   without means  
DATA = mergeACC(ACC, 'RMS1');

%-----------------------------------

% DATA = RMS;
DATA = DATA(:,1);

% Different kinds of smoothing and noise reduction
% E = ema(DATA);
% S3 = sma3(DATA);
% S5 = sma5(DATA);
% S555 = sma5(sma5(sma5(DATA)));
% DATA = S555;

%-----------------------------------

MAX = max(DATA)
MIN = min(DATA)
MEAN = mean(DATA)
MEDIAN = median(DATA)
KURTOSIS = kurtosis(DATA)
SKEWNESS = skewness(DATA)
STD = std(DATA)
Rms = sqrt(mean(DATA.^2))
VARIANCE = var(DATA)
RANGE = range(DATA)
IQR = iqr(DATA)



plot(DATA)
