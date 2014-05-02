function plotUSER(USER)
%PLOTUSER Plots user data

    if isempty(USER) == 1
        return
    end

    TOP = -25;
    BOTTOM = -110;

	D = [ones(size(USER,1),1)*TOP ones(size(USER,1),1)*BOTTOM];
    D = reshape(D.',[],1);

	newUSER = [USER(:,2) USER(:,2)];
	newUSER = reshape(newUSER.',[],1);

    mTime = datenum(getMatlabTime(newUSER(:,1)));
    
    hold on
	stem_handle = stem(mTime,D(:,1),'black');
    baseline_handle = get(stem_handle,'BaseLine');
    set (baseline_handle, 'BaseValue', TOP);
    hold off
    
    labels = cellstr(num2str(USER(:,1)));
    labels = [labels, labels];
    labels = reshape(labels.',[],1);
    
    text(mTime, D(:,1), labels,'VerticalAlignment','bottom','HorizontalAlignment','right');
    
end