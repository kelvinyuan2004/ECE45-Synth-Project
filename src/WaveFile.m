%{
This file defines a WaveFile Object. We will store our data, filepath, etc.
as well as define our function manipulations here.
%}

%{
WaveFile class.

instance vars:
filePath - path of file
%}
classdef WaveFile
    properties
        filePath
    end
    
    methods

        %{
        Constructor for our WaveFile object
           
        @param filePath - desired location of our wav file
        %}
        function obj = WaveFile(filePath)
            obj.filePath = filePath;
        end
        
        %{
        Method to play the current audio
        %}
        function play(obj)
            clear sound;
            % play audio
            [audioData, fs] = audioread(obj.filePath);
            sound(audioData, fs); % Adjust sampling rate as needed
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