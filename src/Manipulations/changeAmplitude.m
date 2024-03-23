%{
Method to change the amplitude of a wav file object

@param obj - the wav file object being manipulated
@param amplitudeScale - amount to scale the amplitudes by [0, 2]. 0 being
muting the audio, 2 being doubling the audio.
%}
function obj = changeAmplitude(obj, amplitudeScale)
    % ref: https://www.mathworks.com/matlabcentral/answers/348355-how-do-i-limit-the-values-in-an-array

    obj.timeData = obj.timeData*amplitudeScale;

    % alternatively, could do obj.freqData *= amplitudeScale (should follow
    % fourier transform properties) but minimize information loss from
    % rounding.
    obj.freqData = fft(obj.timeData);

    % limit the time domain data amplitude to comply with wav standards
    obj.timeData = max(min(obj.timeData, 1), -1);
end