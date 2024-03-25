%{
    pitch offset
    AUTHOR: KEVIN
    Example usage:
    inputSignal = yourInputSignal;

    % Applying pitch offset
    pitchOffsetFactor = 1.2; % Example pitch offset factor
    outputPitchOffset = applyPitchOffset(inputSignal, pitchOffsetFactor);
%}
function output = applyPitchOffset(input, pitchOffsetFactor)
    output = resample(input, pitchOffsetFactor, 1);
end