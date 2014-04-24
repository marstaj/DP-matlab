function [ RESULT ] = splitACCbyActivity( ACC, USER, timeColumn )
%SPLITACCBYACTION Summary of this function goes here
%   Detailed explanation goes here

userLenght = length(USER);
userIndex = 1;
userTime = USER(userIndex,2);
userAction = USER(userIndex,1);

subIndex = 1;
SUB_ACC = zeros(1,timeColumn);

for i = 1 : length(ACC)
    
    time = ACC(i,timeColumn);
    
    if time <= userTime
        SUB_ACC(subIndex,:) = ACC(i,:);
        subIndex = subIndex + 1;
    else
        
        actionType = 'w';
        switch userAction
            case 1
               actionType = 2; % walk 1
            case 2
                actionType = 3; % stairs down 2
            case 3
                actionType = 2; % walk 1
            case 4
                actionType = 1; % escalator 3
            case 5
                actionType = 2; % walk 1
            case 6
                actionType = 2; % walk 1
            case 7
                actionType = 4; % escalator walk 4
        end 
        
        RESULT{userIndex,1} = SUB_ACC;
        RESULT{userIndex,2} = actionType;
        
        subIndex = 1;
        userIndex = userIndex + 1;
        SUB_ACC = zeros(1,timeColumn);
        
        if userIndex > userLenght
            break;
        end
        
        userTime = USER(userIndex,2);
        userAction = USER(userIndex,1);
    end
    
end

% Remove first window
RESULT = RESULT(2:end,:);

end

