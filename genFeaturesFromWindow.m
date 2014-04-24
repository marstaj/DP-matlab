function [RESULT] = genFeaturesFromWindow(WINDOW)
%GENFEATURES Summary of this function goes here
%   Detailed explanation goes here

    [m,n] = size(WINDOW);
    
    if (m ~= 1 && n ~= 1)
        error('Only 1-column or 1-row vector. It has to be vector, not a matrix.')
    end

    MAX = max(WINDOW);
    MIN = min(WINDOW);
    MEAN = mean(WINDOW);
    MEDIAN = median(WINDOW);
    KURTOSIS = kurtosis(WINDOW);
    SKEWNESS = skewness(WINDOW);
    STD = std(WINDOW);
    RMS = sqrt(mean(WINDOW.^2));
    VARIANCE = var(WINDOW);
    RANGE = range(WINDOW);
    IQR = iqr(WINDOW);

    Y = fft(WINDOW);
    Y = abs(Y);    
    Y = Y(~ismember(1:size(Y, 1), [1]), :);
    
    MAXFFT = max(Y(1:fix(length(Y)/2)));
    
    RESULT = [MAXFFT, MAX, MIN, MEAN, MEDIAN, KURTOSIS, SKEWNESS, STD, RMS, VARIANCE, RANGE, IQR];
%       RESULT = [MAXFFT, MAX, MIN, MEAN, RMS, STD, KURTOSIS, SKEWNESS, VARIANCE, RANGE, IQR];
%     RESULT = [MAXFFT, MAX, MIN, MEAN, KURTOSIS, SKEWNESS, STD, RMS, VARIANCE, RANGE, IQR];
%     RESULT = [MAXFFT, MAX, MIN, STD, RMS, VARIANCE, RANGE, IQR];
%     RESULT = [MAXFFT, MAX, MIN];
end