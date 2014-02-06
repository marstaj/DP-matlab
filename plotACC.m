function plotACC(ACC)

    mTime = datenum(getMatlabTime(ACC(:,4)));
    
    hold on
	plot(mTime,ACC(:,1:3)-30)
    hold off
end