#CHmUsiCK

Kind of interface to write dance-code music using ChucK

##Class Drum

###drum, pacificDrum, synthDrum

(int k[])
(float beat,int k[])
(float beat, float div, int k[])
(int k[], int hh[])
(float beat, int k[], int hh[])
(float beat, float div, int k[], int hh[])
(int k[], int s[], int hh[])
(float beat, int k[], int s[], int hh[])
(float beat, float div, int k[], int s[], int hh[])

##Class Bass

###bass

(int chords[])
(float beat, int chords[])
(float beat, int chords[], int measure)
(float beat, int key, int chords[])
(float beat, int key, int chords[], int measure)
(float beat, int scale, int key, int chords[], int measure)

###techBass

()
(float beat, int pattern)
(float beat, int key, int pattern)

##Class Synth

###sinOsc, sqrOsc, triOsc, sawOsc, pulseOsc

(string note[])
(float tempo, string note[])
(float tempo, string note[], int voices)
(float tempo, string note[], int voices, float vol)

##Class Melody

###sinOsc, triOsc, sqrOsc, pulseOsc, sawOsc, bandedWG, blowBotl, blowHole, bowed, flute, mandolin, modalBar, moog, saxofony, sitar, stifKarp, voiceForm, beeThree, fmVoices, hevyMetl, percFlut, rhodey, tubeBell, wurley

(float beat, float div, int notes[])
