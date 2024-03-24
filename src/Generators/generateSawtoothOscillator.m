%{
Generates a reversed sawtooth wave and returns it (array, time domain). 
First generate one period of the sawtooth, reverse the sample, then create
a new sawtooth repeated to fit the duration of the desired signal.
ref: https://www.mathworks.com/help/signal/ref/sawtooth.html
https://en.wikipedia.org/wiki/Duty_cycle
https://www.mathworks.com/help/matlab/ref/repmat.html

@param amplitude - [0, 1] amplitude of wave
@param freq - frequency of sawtooth wave (hz); OSCILLATOR SHOULD BE 1
@param duration - duration (sec)
@param fs - sampling frequency (hz)
%}
function sawtoothWave = generateSawtoothOscillator(amplitude, freq, duration, fs)

    % generate one sample to reverse
    t = linspace(0, 1, 1 * fs);
    sawtoothWave = sawtooth(2 * pi * freq * t);
    sawtoothWave = amplitude * sawtoothWave;

    % flip it to match desired structure
    sawtoothWave = fliplr(sawtoothWave);

    % guarantees required repetitions. Must truncate excess.
    num_repetitions = ceil(duration * fs / length(sawtoothWave));
    sawtoothWave = repmat(sawtoothWave, 1, num_repetitions);

    sawtoothWave = sawtoothWave(1:duration*fs);
end