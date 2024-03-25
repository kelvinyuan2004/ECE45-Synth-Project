function LFO_signal = generateLFO(waveform, freq, duration, fs)
    %time vector
    %duration of the LFO signal in s
    period = 2 * pi * freq;
    time = linspace(0, duration, fs * duration);

    switch waveform
        case 'sin_wave'
            LFO_signal = generateSineWave(1, freq, duration, fs);
        case 'sawtooth_wave'
            LFO_signal = generateSawtoothOscillator(1, freq, duration, fs);
        case 'square_wave'
            LFO_signal = generateSquareOscillator(1, freq, 0, duration, fs);
        otherwise
            error('invalid waveform !');
    end        
end