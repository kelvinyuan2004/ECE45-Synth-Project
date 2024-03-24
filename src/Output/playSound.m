%{
Method to play the current audio
%}
function playSound(obj)
    
    % only let one sound play at a time
    clear sound;
    sound(obj.timeData, obj.fs);
end