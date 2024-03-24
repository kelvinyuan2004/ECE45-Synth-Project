%{
Method to modulate (multiply) two signals. Returns time domain array (2D).

@param signal1 - first signal
@param signal2 - second signal
@return new modulated signal
%}
function signal = modulation(signal1, signal2)
    signal2 = transpose(signal2);
    disp(size(signal1));
    disp(size(signal2));

    signal = signal1 .* signal2;
    %{
    leftChannel = signal1(:, 1);
    rightChannel = signal1(:, 2);

    disp(size(leftChannel));
    disp(size(rightChannel));
    % perform modulation
    modulatedLeft = leftChannel .* signal2;
    modulatedRight = rightChannel .* signal2;

    % combine both channels back together
    signal = [modulatedLeft, modulatedRight];
    %}
end