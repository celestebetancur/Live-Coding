//
//  BassClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Bass extends Chubgraph
{
    TriOsc Bass => ADSR e => Gain bassGain => outlet;
    e.set(10::ms, 8::ms, 1, 5::ms);
    
    int basspatern[5];
    
    Modes modes;
    Rhythm rhythm;
    
    public void gain(float vol) 
    {
        vol => bassGain.gain;
    }
    
    public void bass (int chords[])
    {  
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(4) @=> float r[];
        
        36 => int octave;
  
        while(true)
        {
            for(0 => int i;i < chords.cap(); i++)
            { 
                scale[chords[i]] + octave @=> basspatern[0];
                scale[chords[i]] + octave @=> basspatern[1];
                scale[chords[i]] + octave @=> basspatern[2];
                scale[Math.random2(0,scale.cap() -1 )] + octave @=> basspatern[3];
                scale[Math.random2(0,scale.cap() -1 )] + octave @=> basspatern[4];
                
                for(0 => int ii; ii < basspatern.cap(); ii++)
                {
                    Std.mtof(basspatern[ii]) => Bass.freq; 
                    e.keyOn();
                    (0.5*r[ii])::second => now;
                    e.keyOff();    
                }
            }
        }
    }
    
    public void bass (dur beat,int chords[])
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(4) @=> float r[];
        
        36 => int octave;
        
        while(true)
        {
            for(0 => int i;i < chords.cap(); i++)
            { 
                scale[chords[i]] + octave @=> basspatern[0];
                scale[chords[i]] + octave @=> basspatern[1];
                scale[chords[i]] + octave @=> basspatern[2];
                scale[Math.random2(0,scale.cap() -1 )] + octave @=> basspatern[3];
                scale[Math.random2(0,scale.cap() -1 )] + octave @=> basspatern[4];
                
                for(0 => int ii; ii < basspatern.cap(); ii++)
                {
                    Std.mtof(basspatern[ii]) => Bass.freq; 
                    e.keyOn();
                    (beat*r[ii])=> now;
                    e.keyOff();    
                }
            }
        }
    }
    
    public void bass (dur beat,int chords[],int measure)
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(measure) @=> float r[];
        
        36 => int octave;
        
        while(true)
        {
            for(0 => int i;i < chords.cap(); i++)
            { 
                scale[chords[i]] + octave @=> basspatern[0];
                scale[chords[i]] + octave @=> basspatern[1];
                scale[chords[i]] + octave @=> basspatern[2];
                scale[Math.random2(0,scale.cap() -1 )] + octave @=> basspatern[3];
                scale[Math.random2(0,scale.cap() -1 )] + octave @=> basspatern[4];
                
                for(0 => int ii; ii < basspatern.cap(); ii++)
                {
                    Std.mtof(basspatern[ii]) => Bass.freq; 
                    e.keyOn();
                    (beat*r[ii]) => now;
                    e.keyOff();    
                }
            }
        }
    } 
    
    public void bass (dur beat,int key,int chords[])
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(4) @=> float r[];
        
        36 => int octave;
        
        while(true)
        {
            for(0 => int i;i < chords.cap(); i++)
            { 
                scale[chords[i]] + (octave + key) @=> basspatern[0];
                scale[chords[i]] + (octave + key) @=> basspatern[1];
                scale[chords[i]] + (octave + key) @=> basspatern[2];
                scale[Math.random2(0,scale.cap() -1 )] + (octave + key) @=> basspatern[3];
                scale[Math.random2(0,scale.cap() -1 )] + (octave + key) @=> basspatern[4];
                
                for(0 => int ii; ii < basspatern.cap(); ii++)
                {
                    Std.mtof(basspatern[ii]) => Bass.freq; 
                    e.keyOn();
                    (beat*r[ii]) => now;
                    e.keyOff();    
                }
            }
        }
    } 
    
    public void bass (dur beat,int key,int chords[],int measure)
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(measure) @=> float r[];
        
        36 => int octave;
        
        while(true)
        {
            for(0 => int i;i < chords.cap(); i++)
            { 
                scale[chords[i]] + (octave + key) @=> basspatern[0];
                scale[chords[i]] + (octave + key) @=> basspatern[1];
                scale[chords[i]] + (octave + key) @=> basspatern[2];
                scale[Math.random2(0,scale.cap() -1 )] + (octave + key) @=> basspatern[3];
                scale[Math.random2(0,scale.cap() -1 )] + (octave + key) @=> basspatern[4];
                
                for(0 => int ii; ii < basspatern.cap(); ii++)
                {
                    Std.mtof(basspatern[ii]) => Bass.freq; 
                    e.keyOn();
                    (beat*r[ii]) => now;
                    e.keyOff();    
                }
            }
        }
    } 
    
    public void bass (dur beat,int Scale,int key,int chords[],int measure)
    { 
        modes.modes(Scale) @=> int scale[];
        rhythm.rhythm(measure) @=> float r[];
        
        Scale + 24 => int octave;
        
        while(true)
        {
            for(0 => int i;i < chords.cap(); i++)
            { 
                scale[chords[i]] + (octave + key) @=> basspatern[0];
                scale[chords[i]] + (octave + key) @=> basspatern[1];
                scale[chords[i]] + (octave + key) @=> basspatern[2];
                scale[Math.random2(0,scale.cap() -1 )] + (octave + key) @=> basspatern[3];
                scale[Math.random2(0,scale.cap() -1 )] + (octave + key) @=> basspatern[4];
                
                for(0 => int ii; ii < basspatern.cap(); ii++)
                {
                    Std.mtof(basspatern[ii]) => Bass.freq; 
                    e.keyOn();
                    (beat*r[ii]) => now;
                    e.keyOff();    
                }
            }
        }
    }  
    public void techBass ()
    {
        while(true)
        {
            Std.mtof(24) => Bass.freq;
            e.keyOn();
            0.5::second => now;
            e.keyOff();
        }
    }
    public void techBass (dur beat, int pattern)
    {
        if(pattern == 1)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                beat => now;
                e.keyOff();
                beat => now;
            }
        }
        if(pattern == 2)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                beat => now;
                e.keyOff();
                beat => now;
            }
        }
        if(pattern == 3)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (beat * 0.5) => now;
                e.keyOff();
                (beat * 0.5) => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (beat * 0.5) => now;
                e.keyOff();
                (beat * 0.5) => now;
            }
        }
        if(pattern == 4)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (beat * 0.5) => now;
                e.keyOff();
                (beat * 0.5) => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
            }
        }
        if(pattern == 5)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
            }
        }
    }
    public void techBass (dur beat,int key, int pattern)
    {
        (24 + key) => int note;
        (36 + key) => int octave;
        
        if(pattern == 1)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                beat => now;
                e.keyOff();
                beat => now; 
            }
        }
        if(pattern == 2)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                beat => now;
                e.keyOff();
                beat => now;
            }
        }
        if(pattern == 3)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (beat * 0.5) => now;
                e.keyOff();
                (beat * 0.5) => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (beat * 0.5) => now;
                e.keyOff();
                (beat * 0.5) => now;
            }
        }
        if(pattern == 4)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (beat * 0.5) => now;
                e.keyOff();
                (beat * 0.5) => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
            }
        }
        if(pattern == 5)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (beat * 0.25) => now;
                e.keyOff();
                (beat * 0.25) => now;
            }
        }
    }
}
