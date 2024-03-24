function [LFO_signal, time] = LFO(freq, waveform, duration, fs)
           %time vector
           %duration of the LFO signal in s
            period = 2*pi*(freq);
            time = linspace(0, duration, fs * duration);
            
            switch waveform
                case 'sin_wave'
                    LFO_signal = sin(period * time);
                case 'sawtooth_wave'
                    LFO_signal = generateSawtoothOscillator(1, freq, duration, fs);
                case 'square_wave'
                    LFO_signal = square(period * time);
                case 'triangle'
                    LFO_signal = triangle(period * time, 0.5);
                outerwise
                    error('invalid waveform !');
            end        
                %% evelope_amount is the envelope function that take parameter of time(seconds that u want to envelope)
                LFO_signal;
        end