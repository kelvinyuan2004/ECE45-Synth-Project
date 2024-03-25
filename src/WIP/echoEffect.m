%
% *************************************************************************
% * Author: Daphne Chen PID A18081841                                     *
% *************************************************************************
% * Inputs:  inputSig        Vector (time-domain) to be processed         *
% *          fs              sample rate                                  *
% *          delayTime       The time for echo starts to occur            *
% *          echoDelay       The additinal time for echo to not fully     *
%                            alligned with the original signal            *
%            intensity       Intensity of the echo                        *
% * Outputs: outputEcho      Result vector with echo effect (time-domain) *
% *************************************************************************
% * Description:                                                          *
% *                                                                       *
% * This function takes a vector of samples in the time-domain and create *
% * its echo based on the customize factors                               *
% *************************************************************************
function [outputEcho] = echoEffect(inputSig, fs, delayTime, echoDelay, intensity) %decayFactor

delay_samples = floor(delayTime./1000.*fs);
outputEcho = inputSig;
echo_delay = echoDelay;
echo_delay_samples = floor(echo_delay./ 1000.*fs);
extra_delay = 3;

i = 0;
% Initialize intensity for the first echo
initialIntensity = intensity;

for inputSample = (delay_samples+1) : length(inputSig)
    if (inputSample > delay_samples)
        %the echo sound add onto the original sound
        outputEcho(inputSample) = inputSig(inputSample) + initialIntensity*(outputEcho(inputSample + extra_delay - (delay_samples - echo_delay_samples))); 
        i = i + 1;
   % elseif(inputSample > delay_samples & i >= 3)
      %  initialIntensity = initialIntensity * decayFactor;
       %  outputEcho(inputSample) = inputSig(inputSample) + initialIntensity * outputEcho(inputSample + extra_delay - (delay_samples - echo_delay_samples)); 
        
    end
end

return

end
