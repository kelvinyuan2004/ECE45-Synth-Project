%{
function pitcher : changes pitch of song segment
Author: Andrew Nguyen
inputs:
    input : input sound in wav format.
    nsemites : nsemitone to change pitch
    start : start of sound segment
    stop : end of sound segment
output:
    output: manipulated input sound
%}
function [output] = pitcher(input,nsemitones,start,stop)
%PITCHER Summary of this function goes here
%   Detailed explanation goes here
    if start ~= 1
        fprintf("start ~= 1\n")
        a = input(1:start-1,:);
    else
        a = zeros(2);
    end
    b = input(start:stop,:);
    fprintf("stop: %d, size=%d\n",stop,size(input,1));
    if stop ~= size(input,1)
        fprintf("stop ~= size(input,1)\n")
        c = input(stop+1:size(input,1),:);
    else
        c=zeros(2);
    end
    b = shiftPitch(b,nsemitones);

    output = cat(1,a,b,c);
end

