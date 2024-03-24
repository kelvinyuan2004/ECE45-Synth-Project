%{
Generates a basic square wave and returns it (array, time domain)
ref: https://www.mathworks.com/help/signal/ref/square.html,
https://en.wikipedia.org/wiki/Duty_cycle

@param amplitude - [0, 1] amplitude of wave
@param freq - frequency of square wave (hz); OSCILLATOR SHOULD BE 1
@param width - [-100, 100] width to calculate duty cycle
@param duration - duration (sec)
@param fs - sampling frequency (hz)
%}
function squareWave = generateSquareOscillator(amplitude, freq, width, duration, fs)

    % 0:duration (duration*fs = number of points needed)
    t = linspace(0, duration, duration * fs);
    
    % duty cycle calculation (% in low, % in high)
    dutyCycle = (width + 100) / 2;
    
    squareWave = square(2 * pi * freq * t, dutyCycle);
    squareWave = amplitude * squareWave;
end