% ECE 45 Project Low Pass Filter
% Author: Rong Chen
% This is a low pass filter that combines the LFO and chnages the
% percentage of how it works. The Frequency ranges from 0-20kHz
% The input parameters that are required are the signal, cutoff frequency,
% LFO period, wave type, and duration, the evelope amount, resonance, and
% sampling rate.

function y = ProjectLPF45(signal, cuttoffFreq, lfoPeriod, lfoWaveType, lfoDuration, envelopeAmount, resonance, samplingRate)
    % Generate LFO waveform
    [lfoSignal, ~] = LFO(lfoPeriod, lfoWaveType, lfoDuration, samplingRate);
    
    % Normalize cutoff frequency
    CutoffNorm = cuttoffFreq / (samplingRate/2);
    
    % Modulate cutoff frequency using LFO
    cutoffNormModulated = CutoffNorm + lfoSignal;
    cutoffNormModulated(cutoffNormModulated < 0) = 0; % Ensure cutoff frequency is non-negative
    
    % Apply envelope amount to cutoff frequency
    cutoffNormModulated = cutoffNormModulated * envelopeAmount;
    
    % Design Butterworth low-pass filter with resonance
    [b, a] = butter(2, cutoffNormModulated, 'low'); % 2nd-order filter
    [b, a] = eqtflength(b, a); % Equalize lengths of numerator and denominator
    
    % Apply resonance
    if resonance > 0
        [b, a] = addresonance(b, a, cuttoffFreq, resonance);
    end
    
    % Apply filter to the signal
    y = filter(b, a, signal);
end