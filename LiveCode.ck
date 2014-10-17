// Ready to rock the world ??

Drum drum; Bass bass; Synth synth; Melody melody;

Gain master;
for(0 => int i; i <= 14 ; i++) Bus.channel[i] => master;
master => dac;

0.5 => master.gain;

1 => Bus.channel[12].gain;
0.15 => Bus.channel[13].gain;
0.9 => Bus.channel[14].gain;

spork~drum.drum(120,8,[12]);

spork~bass.techBass(120,0,4);

spork~synth.sinOsc(120,["cm","eb"]);

spork~melody.wurley(120,8,[0,0,0,60,60,0,0,60,0,60,0]);

while(true) 1::second => now;
