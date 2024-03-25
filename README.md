# Matlab Final Project for ECE45.
Overview:
This is our ECE45 project. The program will be written using MATLAB and will be using the MATLAB GUI as well.

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
The following will show the bare minimum into how to run the application and how to import sounds into the app as well. Please refer to the [writeup](https://docs.google.com/document/d/e/2PACX-1vQbeLiGtcSWIh8PIwu1w4pUH_zetZpARPXDrXkuVdp3Hq1xmoa-urR9AU4SDfVg0yl4pvSMpcZ1zmhr/pub) for more information and details into everything else about the app.


1) Run "SYNTH.mlapp" by just openning it. If unable to import files this way, open the project in MATLAB, and add all files to the project path (right click -> add to project path -> all subfolders).

2) Import sound to select wav file on computer (or use sample sounds from "imported sounds folder")
"Play" to play the audio, "Stop" to stop the audio.
