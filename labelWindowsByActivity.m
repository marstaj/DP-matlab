function [ RESULT ] = labelWindowsByActivity( ACC, USER )
%SPLITACCBYACTION Summary of this function goes here
%   Detailed explanation goes here

num = length(WINDOWS);

for i = 1 : num
    WINDOW = WINDOWS{i};
    windowStartTime = WINDOW(1,2);
    windowEndTime = WINDOW(end,2);
    
    
end


 % ??????????

userLenght = length(USER);
userIndex = 1;
userTime = USER(userIndex,2);
userAction = USER(userIndex,1);

subIndex = 1;
SUB_ACC = zeros(1,4);

for i = 1 : length(ACC)
    
    time = ACC(i,4);
    
    if time <= userTime
        SUB_ACC(subIndex,:) = ACC(i,:);
        subIndex = subIndex + 1;
    else
        
        actionType = 'w';
        switch userAction
            case 1
               actionType = 1; % walk
            case 2
                actionType = 2; % stairs down
            case 3
                actionType = 1; % walk
            case 4
                actionType = 3; % escalator
            case 5
                actionType = 1; % walk
        end 
        
        RESULT{userIndex,1} = SUB_ACC;
        RESULT{userIndex,2} = actionType;
        
        subIndex = 1;
        userIndex = userIndex + 1;
        SUB_ACC = zeros(1,4);
        
        if userIndex > userLenght
            break;
        end
        
        userTime = USER(userIndex,2);
        userAction = USER(userIndex,1);
    end
    
end

end

