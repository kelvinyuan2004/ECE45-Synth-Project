%{
This file defines a WaveFile Object. We will store our data, filepath, etc.
as well as define our function manipulations here.

ref:
https://www.mathworks.com/products/matlab/object-oriented-programming.html
%}

%{
WaveFile class.

instance vars:
filePath - path of file
audioData - array storing amplitudes
fs - sampling rate
%}
classdef WaveFile
    
    properties
        filePath
        timeData
        fs
        freqData
    end
    
    methods

        %{
        Constructor for our WaveFile object
           
        @param filePath - desired location of our wav file
        %}
        function obj = WaveFile(filePath)

            %ref: https://www.youtube.com/watch?v=2kvemW3W1Vk
            obj.filePath = filePath;
            [obj.timeData, obj.fs] = audioread(obj.filePath);
            obj.freqData = fft(obj.timeData);
        end
    end
end