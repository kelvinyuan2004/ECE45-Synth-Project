%{
    Generates an ASDR envelope.

    ref: https://www.mathworks.com/matlabcentral/answers/305209-how-to-implement-adsr-attack-decay-sustain-release-or-even-the-fade-in-fade-out
    
    @param duration - duration of entire ASDR envelope
    @param attack - duration of attack in s
    @param decay - duration of delay in s
    @param sustain - sustain% [0, 100]
    @param release - duration of release in s
    @param fs - sampling frequency
    @return 1d time domain array containing envelope
%}

function envelope = generateEnvelope(duration, attack, decay, sustain, release, fs)
    
    totalSamples = duration * fs;
    envelope = zeros(totalSamples, 1);
    
    % get length (in samples) of each portion
    % GETTING MIN prevents weird structures forming
    attackSamples = min(attack * fs, totalSamples);
    decaySamples = min(decay * fs, totalSamples - attackSamples);
    releaseSamples = min(release * fs, totalSamples - attackSamples - decaySamples);
    
    % attack
    envelope(1:attackSamples) = linspace(0, 1, attackSamples);
    
    % decay
    envelope(attackSamples : attackSamples + decaySamples) = linspace(1, sustain/100, decaySamples+1);
    
    % SUSTAIN decay
    envelope((attackSamples + decaySamples): (end - releaseSamples)) = sustain/100;
    
    % release
    envelope(end - releaseSamples:end) = linspace(sustain / 100, 0, releaseSamples+1);
end