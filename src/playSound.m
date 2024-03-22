%{
function result = playSound(filePath)
    disp(filePath);
    [audioData, fs] = audioread(filePath);


    % Play the audio
    sound(audioData, fs);
end

function stopSound()
  
    clear sound;
end
%}