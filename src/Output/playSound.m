%{
Method to play the current audio
%}
function playSound(obj)

    clear sound;
    % play audio
    sound(obj.timeData, obj.fs); % Adjust sampling rate as needed
end