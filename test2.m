clear all

ACC = load('test/testacc.txt');

%-----------------------------------
numRows = length(ACC);

% Merging 3 axis together to 1
% RMS    
% DATA = mergeACC(ACC, 'RMS');

% plot(ACC(:,1:3))

% RMS   without means  
DATA = mergeACC(ACC, 'ADDITION');
DATA = removeDuplicates(DATA,2);

plot(DATA(:,1))
ylim([9.5 18.5]);
% ylim([1 10]);
% ylim([6 15]);

DATA = linData(DATA);
%  
% plot(DATA(:,1))
% xlim([0 630]);

DATA1 = DATA;
DATA(:,1)  = sma5(DATA(:,1));
DATA1(:,1) = sma3(DATA1(:,1));

% plot(DATA(:,1))
% hold on;
% plot(DATA1(:,1))
% hold off;
% 
% xlim([0 630]);

DATA = DATA(~ismember(1:size(DATA, 1), [1:512 769:length(DATA)]), :);

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

