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
        
        %{
        Method to play the current audio
        %}
        function play(obj)

            clear sound;
            % play audio
            sound(obj.timeData, obj.fs); % Adjust sampling rate as needed
        end

        %{
        Method to play the current audio
        %}
        function obj = changeAmplitude(obj, amplitudeScale)

            %ref: https://www.mathworks.com/matlabcentral/answers/348355-how-do-i-limit-the-values-in-an-array

            obj.timeData = obj.timeData*amplitudeScale;
            obj.freqData = obj.freqData*amplitudeScale;
            %{
            Make sure absolute value of amplitudes is max 1 to comply
            % with wav file standards.
            %}                       
            obj.timeData = max(min(obj.timeData, 1), -1);
            obj.freqData = fft(obj.timeData);
        end
    end
    
    methods(Static)

        %{
        Method to stop playing audio
        %}
        function stop()

            clear sound;
        end
    end
end