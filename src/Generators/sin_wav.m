%{
Generates a basic sin wave and writes it to file.
ref: https://www.mathworks.com/help/dsp/ref/dsp.sinewave-system-object.html

@param fileName - name of file to save as.
@param freq - frequency of sin wave in hz. ex 440 = A4
@param duration - duration in seconds
%}
function sinWaveGenerator(fileName, freq, duration)

% set default sampling frequency to standard.
fs = 44100; 

% vector for time
t = linspace(0, duration, fs * duration);

% generate function sine wave
sin_wave = sin(2 * pi * frequency * t);

% normalize amplitude to [-1, 1]
sine_wave = sine_wave / max(abs(sine_wave));

% write to .wav file
audiowrite(filePath, sine_wave, fs);
end
