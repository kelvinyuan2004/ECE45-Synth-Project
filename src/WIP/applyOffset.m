%{
    offset
    AUTHOR: KEVIN
    Example usage:
    inputSignal = yourInputSignal;
    
    Applying offset
    offsetAmount = 0.5; % Example offset amount
    outputOffset = applyOffset(inputSignal, offsetAmount);
%}
function output = applyOffset(input, offsetAmount)
    output = input + offsetAmount;
end