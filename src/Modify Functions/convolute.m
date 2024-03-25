%{
Method to convolute two signals.
ref: https://www.mathworks.com/help/matlab/ref/fft.html

Note could use conv(), but might be more useful to store freq domain data
as well.

@param signal_1 - 2d wav file object of first signal (n x 2)
@param signal_2 - 1d wav file object of second signal (1 x n)
@return new wav file object containing new convoluted data
%}
function obj = convolute(signal_1, signal_2)

    % pad the arrays for convolution of unequal length vectors
    padLength = max(length(signal_1), length(signal_2));

    % fft the timeData again to make sure correct padding. Then multiply.
    obj.freqData = fft(signal_1.timeData, padLength) .* fft(signal_2.timeData, padLength);

    obj.timeData = ifft(obj.freqData);
end