//
//  FMSynth.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class FMSynth extends Chubgraph
{
    SinOsc modulator => SinOsc carrier => outlet;
    modulator => carrier => ADSR envelope => outlet;
    
    2 => carrier.sync;
    1000 => modulator.gain;
    110 => modulator.freq;
    
    envelope.set(10::ms, 8::ms, .5, 5::ms);
    
    public void sync(int mode)
    {
        mode => carrier.sync;
    }
    public void mfreq(float mf)
    {
        mf => modulator.freq;
    }
    public void mgain(float mg)
    {
        (mg*1000) => modulator.gain;
    }
    public void cfreq(float cf)
    {
        cf => carrier.freq;
    }
    public void cgain(float cg)
    {
        cg => carrier.gain;
    }
    public void ratio(float num, float den)
    {
        (num/den) => float mf;
        carrier.freq() * mf => modulator.freq;
    }
    public void fmBass(dur beat,float div,int notes[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    envelope.keyOff();
                    tempo => now;
                }
                else
                {
                    Std.mtof(notes[i]) => carrier.freq;
                    envelope.keyOn();
                    tempo => now;
                    envelope.keyOff();
                }
            }          
        }
    }
}
