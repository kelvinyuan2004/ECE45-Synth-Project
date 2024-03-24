function [Lfo_signal, time] = LFO(wave_period,wave_type, duration,sampling_rate)
           %time vector
           %duration of the LFO signal in s
            period = 2*pi*(1/wave_period);
            time = linspace(0, duration, sampling_rate * duration);
            waveform = wave_type;
            switch waveform
                case 'sin_wave'
                    output_wave_time_domain = sin(period * time);
                case 'sawtooth_wave'
                    output_wave_time_domain = sawtooth(period * time);
                case 'square_wave'
                    output_wave_time_domain = square(period * time);
                case 'triangle'
                    output_wave_time_domain = triangle(period * time, 0.5);
                outerwise
                    error('invalid waveform !');
            end        
                %% evelope_amount is the envelope function that take parameter of time(seconds that u want to envelope)
                Lfo_signal = output_wave_time_domain .* envelope_amount(time);%%make sure the names are the same for waveform
        end