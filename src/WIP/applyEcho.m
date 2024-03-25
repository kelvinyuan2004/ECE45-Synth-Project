%{
    echo
    AUTHOR: KEVIN
    Example usage:
    inputSignal = yourInputSignal;
    
    Applying echo:
    delaySamples = 1000; % Example delay in samples
    echoAmount = 0.5; % Example echo amount
    outputEcho = applyEcho(inputSignal, delaySamples, echoAmount);
%}
function output = applyEcho(input, delaySamples, echoAmount)
    output = [input, zeros(1, delaySamples)] + [zeros(1, delaySamples), input * echoAmount];
end