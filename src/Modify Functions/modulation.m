%{
Method to modulate (multiply) two signals. Returns time domain array (2D).

@param signal1 - first signal
@param signal2 - second signal
@return new modulated signal
%}
function signal = modulation(signal1, signal2)
    signal2 = transpose(signal2);

    signal = signal1 .* signal2;
end