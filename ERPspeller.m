Clear the workspace and the screen
close all;
clearvars;
sca;

%event setting
config_io;
add=['CFF8'];
address = hex2dec([add]);
%%
block=9;

% Here we call some default settings for setting up Psychtoolbox
PsychDefaultSetup(2);

% Get the screen numbers
screens = Screen('Screens');

% Select the external screen if it is present, else revert to the native
% screen
screenNumber = max(screens);

% Define black, white and grey
black = BlackIndex(screenNumber);
white = WhiteIndex(screenNumber);
grey = white / 2;

% Open an on screen window and color it grey
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, black);

% Query the frame duration
ifi = Screen('GetFlipInterval', window);

% Set the blend funciton for the screen
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');

% Get the size of the on screen window in pixels
% For help see: Screen WindowSize?
[screenXpixels, screenYpixels] = Screen('WindowSize', window);

% Get the centre coordinate of the window in pixels
% For help see: help RectCenter
[xCenter, yCenter] = RectCenter(windowRect);

% hide the mouse
HideCursor;

% Sync us and get a time stamp
vbl = Screen('Flip', window);
waitframes=1;

color=cell(6,6);
color(:,:)={grey};
word={'A','B','C','D','E','F',...
    'G','H','I','J','K','L',...
    'M','N','O','P','Q','R',...
    'S','T','U','V','W','X',...
    'Y','Z','1','2','3','4',...
    '5','6','7','8','9','<',};
redx={1,5,3,1,5,3,1,5,3};
redy={1,1,2,3,3,4,5,5,6};
%event1:start
event(address,1);
%%
for k=(block-1)*4+1:(block-1)*4+4
    
    Screen('TextSize', window, 60);
    color(:,:)={grey};
    for i=1:6 %y
        for j=1:6 %x
            DrawFormattedText(window,word{(i-1)*6+j},screenXpixels/7*j,screenYpixels/7*i,color{j,i});
        end
    end
    Screen('Flip', window);
    if k~=(block-1)*4+1
        pause(rand+1);
    end
    
    if block==1 || block==3 || block==4 || block==6 || block==7 || block==9
        color{redx{block}+(k-1)-(block-1)*4,redy{block}}=[1 0 0];
    else
        if (k-1)-(block-1)*4<2
            color{redx{block}+(k-1)-(block-1)*4,redy{block}}=[1 0 0];
        else
            color{(k-2)-(block-1)*4,redy{block}+1}=[1 0 0];
        end
    end    
    for i=1:6
        for j=1:6
            DrawFormattedText(window,word{(i-1)*6+j},screenXpixels/7*j,screenYpixels/7*i,color{j,i});
        end
    end
    Screen('Flip', window);
    pause(2);

    %reset the parameter    
    time=0;
    flash_times=1;
    flashing=1;
    % Loop the animation until a key is pressed
    while ~KbCheck && flash_times<=144
        if flashing==1
            target=0;
            if mod(flash_times,12)==1
                randorder=randperm(12);
            end
%             for i=1:12
%                 randorder(i)=mod(i,12)+1;
%             end

            color(:,:)={grey};
            if mod(flash_times,12)==randorder(1)-1
                color(1,:)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(2)-1
                color(2,:)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(3)-1
                color(3,:)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(4)-1
                color(4,:)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(5)-1
                color(5,:)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(6)-1
                color(6,:)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(7)-1
                color(:,1)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(8)-1
                color(:,2)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(9)-1
                color(:,3)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(10)-1
                color(:,4)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(11)-1
                color(:,5)={[1 1 0]};
            elseif mod(flash_times,12)==randorder(12)-1
                color(:,6)={[1 1 0]};
            end

            for i=1:6
                for j=1:6
                    if (i-1)*6+j==k && ~isequal(color(j,i),{0.5})
                        %target
                        target=1;
                    end
                end
            end
            
            for i=1:6
                for j=1:6
                    DrawFormattedText(window,word{(i-1)*6+j},screenXpixels/7*j,screenYpixels/7*i,color{j,i});
                end
            end
            % Flip to the screen
            vbl  = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
            % Increment the time
            time = time + ifi;
            
            if target==1
                event(address,2);
                flash_times=flash_times+1;
            else
                %non-target
                event(address,3);
                flash_times=flash_times+1;
            end
            
            pause(0.125);
            flashing=0;
            
        else
            for i=1:6
                for j=1:6
                    DrawFormattedText(window,word{(i-1)*6+j},screenXpixels/7*j,screenYpixels/7*i,grey);
                end
            end
            Screen('Flip', window);
            pause(0.05+rand/100*3);
            flashing=1;
        end
    end
end

%event4:end
event(address,4);

Screen('TextSize',window, 80);
DrawFormattedText(window, 'Finish', 'center','center', white);
Screen('Flip', window);
pause(2);

% Clear the screen
sca;