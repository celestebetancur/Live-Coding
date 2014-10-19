//
//  BassClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Bass
{
    TriOsc Bass => ADSR e => Bus.channel[12];
    
    e.set(10::ms, 8::ms, .5, 5::ms);
    
    int basspatern[5];
    
    Modes modes;
    Rhythm rhythm;
    
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
    
    public void bass (float beat,int chords[])
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(4) @=> float r[];
        
        36 => int octave;
        
        (60/beat) => float tempo;
        
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
                    (tempo*r[ii])::second => now;
                    e.keyOff();    
                }
            }
        }
    }
    
    public void bass (float beat,int chords[],int measure)
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(measure) @=> float r[];
        
        36 => int octave;
        
        60/beat => float tempo;
        
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
                    (tempo*r[ii])::second => now;
                    e.keyOff();    
                }
            }
        }
    } 
    
    public void bass (float beat,int key,int chords[])
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(4) @=> float r[];
        
        36 => int octave;
        
        60/beat => float tempo;
        
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
                    (tempo*r[ii])::second => now;
                    e.keyOff();    
                }
            }
        }
    } 
    
    public void bass (float beat,int key,int chords[],int measure)
    { 
        modes.modes(1) @=> int scale[];
        rhythm.rhythm(measure) @=> float r[];
        
        36 => int octave;
        
        (60/beat) => float tempo;
        
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
                    (tempo*r[ii])::second => now;
                    e.keyOff();    
                }
            }
        }
    } 
    
    public void bass (float beat,int Scale,int key,int chords[],int measure)
    { 
        modes.modes(Scale) @=> int scale[];
        rhythm.rhythm(measure) @=> float r[];
        
        Scale + 24 => int octave;
        
        (60/beat) => float tempo;
        
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
                    (tempo*r[ii])::second => now;
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
    public void techBass (float beat, int pattern)
    {
        if(pattern == 0)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (60/beat)::second => now;
                e.keyOff();
                ((60/beat)*3)::second => now;
            }
        }
        if(pattern == 1)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (60/beat)::second => now;
                e.keyOff();
                (60/beat)::second => now;
            }
        }
        if(pattern == 2)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (30/beat)::second => now;
                e.keyOff();
                (30/beat)::second => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (30/beat)::second => now;
                e.keyOff();
                (30/beat)::second => now;
            }
        }
        if(pattern == 3)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (30/beat)::second => now;
                e.keyOff();
                (30/beat)::second => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
            }
        }
        if(pattern == 4)
        {
            while(true)
            {
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(24) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(36) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
            }
        }
    }
    public void techBass (float beat,int key, int pattern)
    {
        (24 + key) => int note;
        (36 + key) => int octave;
        
        if(pattern == 0)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (60/beat)::second => now;
                e.keyOff();
                ((60/beat)*3)::second => now;
            }
        }
        if(pattern == 1)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (60/beat)::second => now;
                e.keyOff();
                (60/beat)::second => now;
            }
        }
        if(pattern == 2)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (30/beat)::second => now;
                e.keyOff();
                (30/beat)::second => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (30/beat)::second => now;
                e.keyOff();
                (30/beat)::second => now;
            }
        }
        if(pattern == 3)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (30/beat)::second => now;
                e.keyOff();
                (30/beat)::second => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
            }
        }
        if(pattern == 4)
        {
            while(true)
            {
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(note) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
                Std.mtof(octave) => Bass.freq;
                e.keyOn();
                (15/beat)::second => now;
                e.keyOff();
                (15/beat)::second => now;
            }
        }
    }
}
