%{
AUTHOR: CHRIS

Generates noise to add to sample

@param intensity - intensity of noise generated [1, 10]
@param duration - duration of original
@param fs - sampling frequency
@return 1d array of noise [0, 1]
%}

function noise = generateNoise(intensity, duration, fs)
    
    % generates random number between 0 and 0.1
    noise = rand(1, floor(duration*fs))/10;
    
    % scale intensity
    noise = noise*intensity;
end