%{
    AUTHOR: CHRIS

    The idea:
     1. Take an input provided by the user (noised)
     2. Clear the signal with the function
     3. Return the signal

    fs = sampling rate
    duration = duration of sample in seconds
%}

function denoised_signal = applyDenoise(fs, duration)
    denoised_signal = linspace(0, duration, fs*duration);
    
    mu = 0.006;
    for i=1:(fs*2)-order
	    buffer = ref(i:i+order-1);
	    desired(i) = primary(i)-buffer*denoised_signal;
	    denoised_signal=denoised_signal+(buffer.* mu * desired(i)/norm(buffer));
    end
end