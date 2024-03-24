%{
Generates a basic sin wave and writes it to file.
ref: https://www.mathworks.com/help/dsp/ref/dsp.sinewave-system-object.html

@param fileName - name of file to save as
@param freq - frequency of sin wave (hz); ex. 440 = A4
@param duration - duration (sec)
%}
function sineWave = generateSineWave(amplitude, freq, duration)

    % set default sampling frequency to standard.
    fs = 44100; 
    
    % 0:duration (duration*fs = number of points needed)
    t = linspace(0, duration, fs * duration);
    
    sineWave = sin(2 * pi * freq * t);
    sineWave = amplitude * sineWave;
end
