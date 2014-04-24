function plotUSER(USER)
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

function getTimeFromMiliseconds(milisec)
    time_unix = milisec;
    time_reference = datenum('1970', 'yyyy'); 
    time_matlab = time_reference + time_unix / 8.64e7;
    datestr(time_matlab, 'dd.mm.yyyy HH:MM:SS.FFF')
end