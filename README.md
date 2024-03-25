# MATLAB Final Project for ECE45.
Overview:
This is our ECE45 project. The program will be written using MATLAB and will be using the MATLAB GUI as well. It draws heavy inspiration from [Ableton's Digital Synth Playground](https://learningsynths.ableton.com/en/playground)

## Contributers and Contributions:

Kelvin Yuan, A18140796:

* Add function/what did
  - description-ish

Zhenyu Jiang, A18098929 (LFO generator):


The function will generate the desired LFO signal (in the time domain) based on those parameters so that we can use that to modify our waveform. If the unrecognized signal type is imputed, the function will output an error message. 


Henry Tran, A17685681:

* Updated the README file to become more descriptive
* Worked on updating the report with relevant information
* Helped with identifying bugs with the app and contributed with debugging
  - Differences between how the app runs on macOS and Windows
  - Identified a problem with uploading .wav files for the app to 


Rong Chen, A18083454:

* Authored the Low Pass Filter
  - Constructing the implementation of it

Andrew Nguyen, A18073124:

* Pitch function
  - Will cut a segment of an audio array and shift its pitch.<br>
  - Splice the shifted segment back into the original signal .<br>


Daphne Chen, A18081841:

* Echo Function
  - Creates echo of an input signal(audio array, works with audio in .wav)
  - Users can specify the time distance between each echo and its intensity


Christopher Phan, A18066159:

* Anti Noise function<br>
  - Created a method to remove noise from a signal
  - User provides a input, a noisy sample is generated and then de-noised
  - Can be used to clear up bad audio due to recording quality or environmental constraints


## Writeup:
The writeup is located [here](https://docs.google.com/document/d/e/2PACX-1vQbeLiGtcSWIh8PIwu1w4pUH_zetZpARPXDrXkuVdp3Hq1xmoa-urR9AU4SDfVg0yl4pvSMpcZ1zmhr/pub). This will contain a more in detail version of all that is seen here in the README file.

## Instructions:
NOTE: REQUIRES MATLAB.

The following will show the bare minimum into how to run the application and how to import sounds into the app as well. Please refer to the [writeup](https://docs.google.com/document/d/e/2PACX-1vQbeLiGtcSWIh8PIwu1w4pUH_zetZpARPXDrXkuVdp3Hq1xmoa-urR9AU4SDfVg0yl4pvSMpcZ1zmhr/pub) for more information and details into everything else about the app.

Run "SYNTH.mlapp" by just executing it.
Press "Import Sound" button to select a .wav file from your computer. There are some provided wav files under the "imported sounds" directory.

IMPORTANT: If you are unable to upload the file (i.e. get an error):
1) Open the project in MATLAB
2) Select each folder in the explorer window for the project. Right Click -> "Add to Path" -> "Folder and Subfolders"

Once the file is succesfully uploaded, you will be met with your waveform in the time and frequency domains, and you can freely apply various manipulations.
The wave, represented in both domains, should be represented each time you perform a manipulation. Unfortunately, there are a few bugs we did not have time to patch out, especially with file handling and some edge cases of the ADSR generator. For more information, check the "current bugs" file.

Press the triangle to play your new audio, and the square to stop and reset the audio to the beginning. NOTE: if you you are performing an operation while playing the audio, even though the graphs may have changed, you have to restart the playback to hear the new changes.

## Helpful Tips:

1) The ADSR envelope unfortunately does not work very well on longer files. To measure the manipulations in a more meanigful way, we recommended using a shorter file (5-20 seconds, sin_a4_5s.wav is a good choice)
2) For the square and sawtooth oscillators on the left, we recommend testing it on simple waves with known frequency, and watching the oscillator frequency to it. "sin_a4_5s.wav" is a good choice once again, and remember to set the oscillator frequency to 440.
3) We HIGHLY advise against turning noise to any intensity greater than 5.
