function gsmLegend = plotGSM(GSM)
%PLOTGSM Plots GSM data

    GSM = sortrows(GSM,2);

    [~,~,uniqueIndex] = unique(GSM(:,2));
    cellA = mat2cell(GSM, accumarray(uniqueIndex(:),1),6);
    
    gsmLegend = cell(length(cellA),1);
    
    hold on
    for i = 1 : length(cellA)
        bts = cellA{i};
        
        color = colorFromBTS(bts(1,2));
        mTime = datenum(getMatlabTime(bts(:,6))); 
        plot(mTime,bts(:,4),'LineWidth',3,'Color', color)
        
%         gsmLegend{i} = int2str(bts(1,2));
          gsmLegend{i} = nameOfBTS(bts(1,2));  
    end
    hold off
    
%   mTime = datenum(getMatlabTime(GSM(:,6)));  
% 	plot(mTime,GSM(:,4),'LineWidth',3)
    
end