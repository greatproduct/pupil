% PTBprelims.m
% helper script to go find open psychtoolbox windows and either get
% dimensions or initialize

if ispc
    which_screen = 2;
else
    which_screen = 1;
end

% if PTB isn't already running, open a window
windowPtrs = Screen('Windows');
if isempty(windowPtrs)
    %which screen do we display to?
    [win, screenRect] = Screen('OpenWindow',which_screen,[0 0 0],[],32);
else
    win = windowPtrs(1);
    screenRect = Screen('Rect',win);
end
horz=screenRect(3);
vert=screenRect(4);