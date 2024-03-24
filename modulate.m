%{
Method to modulate (multiply) two signals. Returns time domain array.

@param signal1 - first signal
@param signal2 - second signal
@return new modulated signal
%}
function signal = modulate(signal1, signal2)

    signal = signal1 .* signal2;
end