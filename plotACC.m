function plotACC(ACC)
    OFFSET = -50;
    
    DATA = ACC;
    
    mTime = datenum(getMatlabTime(DATA(:,4)));
    
    hold on
	plot(mTime,DATA(:,1:3) + OFFSET)
    hold off
    
    
%     DATA = mergeACC(ACC, 'RMS1');
%     
%     mTime = datenum(getMatlabTime(DATA(:,2)));
%     
%     hold on
% 	plot(mTime,DATA(:,1) + OFFSET)
%     hold off
end