//
//  LiveCode.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//
// tap with space bar to start rockin' the world !!!

Drum drum => dac;
Melody melody => dac;
Synth synth => dac;
Bass bass => dac;

spork~drum.drum(Tap.beat,4,[1,0,0,0],[0,0,1,0],[1,1,1,1]);
spork~melody.wurley(Tap.beat,8,[60,0,60,0,0,58,63,0]);
spork~synth.sinOsc(Tap.beat,["cm","bb"]);
spork~bass.techBass(Tap.beat,3);

Tap tap; 
tap.tap() => Tap.beat;

while(true) 1::second => now;
