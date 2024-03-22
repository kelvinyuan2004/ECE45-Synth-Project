%{
This file defines a WaveFile Object. We will store our data, filepath, etc.
as well as define our function manipulations here.
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
            [obj.timeData, obj.fs] = audioread(obj.filePath);
            sound(obj.timeData, obj.fs); % Adjust sampling rate as needed
        end

        %{
        Method to play the current audio
        %}
        function obj = changeAmplitude(obj, amplitudeScale)

            %ref: https://www.mathworks.com/matlabcentral/answers/348355-how-do-i-limit-the-values-in-an-array

            obj.freqData = obj.freqData*amplitudeScale;

            % Make sure absolute value of amplitudes is max 1 to comply
            % with wav file standards.
            obj.freqData = max(min(obj.freqData, 1), -1);
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