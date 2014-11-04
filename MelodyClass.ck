//
//  MelodyClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Melody extends Chubgraph
{   
    Gain vol => outlet;
    
    SinOsc sin => ADSR a => vol;
    SqrOsc sqr => ADSR b => vol;
    PulseOsc pulse => ADSR c => vol;
    SawOsc saw => ADSR d => vol;
    TriOsc tri =>  ADSR e => vol;
    BandedWG BWG => vol;
    BlowBotl BB => vol;
    Wurley W => vol;
    TubeBell TB => vol;
    Rhodey rhod => vol;
    PercFlut PF => vol;
    BlowHole BH => vol;
    Bowed bow => vol;
    Flute flut => vol;
    Mandolin mandol => vol;
    Saxofony sax => vol;
    Moog mg => vol;
    Sitar sit => vol;
    ModalBar MB => vol;
    HevyMetl HM => vol;
    StifKarp SK => vol;
    BeeThree BT => vol;
    FMVoices fmv => vol;
    
    a.set(10::ms, 8::ms, .5, 5::ms);
    b.set(10::ms, 8::ms, .5, 5::ms);
    c.set(10::ms, 8::ms, .5, 5::ms);
    d.set(10::ms, 8::ms, .5, 5::ms);
    e.set(10::ms, 8::ms, .5, 5::ms);
    
    public void sinOsc(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    a.keyOff();
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sin.freq;
                    a.keyOn();
                    (tempo/div) => now;
                    a.keyOff();
                }
            }          
        }
    }
    public void triOsc(dur beat,float div,int notes[])
    {        
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    e.keyOff();
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => tri.freq;
                    e.keyOn();
                    (tempo/div) => now;
                    e.keyOff();
                }
            }          
        }
    }
    public void sqrOsc(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    b.keyOff();
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sqr.freq;
                    b.keyOn();
                    (tempo/div) => now;
                    b.keyOff();
                }
            }          
        }
    }
    public void pulseOsc(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    c.keyOff();
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => pulse.freq;
                    c.keyOn();
                    (tempo/div) => now;
                    c.keyOff();
                }
            }          
        }
    }
    public void sawOsc(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    d.keyOff();
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => saw.freq;
                    d.keyOn();
                    (tempo/div) => now;
                    d.keyOff();
                }
            }          
        }
    }
    public void bandedWG(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BWG.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BWG.freq;
                    1 => BWG.noteOn;
                    BWG.noteOn;
                    (tempo/div) => now;
                    BWG.noteOff;
                }
            }          
        }
    }
    public void blowBotl(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BB.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BB.freq;
                    1 => BB.noteOn;
                    BB.noteOn;
                    (tempo/div) => now;
                    BB.noteOff;
                }
            }          
        }
    }
    public void blowHole(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BH.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BH.freq;
                    1 => BH.noteOn;
                    BH.noteOn;
                    (tempo/div) => now;
                    BH.noteOff;
                }
            }          
        }
    }
    public void bowed(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    bow.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => bow.freq;
                    1 => bow.noteOn;
                    bow.noteOn;
                    (tempo/div) => now;
                    bow.noteOff;
                }
            }          
        }
    }
    public void flute(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    flut.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => flut.freq;
                    1 => flut.noteOn;
                    flut.noteOn;
                    (tempo/div) => now;
                    flut.noteOff;
                }
            }          
        }
    }
    public void mandolin(dur beat,float div,int notes[])
    {
       (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    mandol.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => mandol.freq;
                    1 => mandol.noteOn;
                    mandol.noteOn;
                    (tempo/div) => now;
                    mandol.noteOff;
                }
            }          
        }
    }
    public void modalBar(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    MB.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => MB.freq;
                    1 => MB.noteOn;
                    MB.noteOn;
                    (tempo/div)=> now;
                    MB.noteOff;
                }
            }          
        }
    }
    public void moog(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    mg.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => mg.freq;
                    1 => mg.noteOn;
                    mg.noteOn;
                    (tempo/div) => now;
                    mg.noteOff;
                }
            }          
        }
    }
    public void saxofony(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    sax.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sax.freq;
                    1 => sax.noteOn;
                    sax.noteOn;
                    (tempo/div) => now;
                    sax.noteOff;
                }
            }          
        }
    }
    public void sitar(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    sit.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sit.freq;
                    1 => sit.noteOn;
                    sit.noteOn;
                    (tempo/div) => now;
                    sit.noteOff;
                }
            }          
        }
    }
    public void stifKarp(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    SK.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => SK.freq;
                    1 => SK.noteOn;
                    SK.noteOn;
                    (tempo/div) => now;
                    SK.noteOff;
                }
            }          
        }
    }
    
    public void beeThree(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BT.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BT.freq;
                    1 => BT.noteOn;
                    BT.noteOn;
                    (tempo/div) => now;
                    BT.noteOff;
                }
            }          
        }
    }
    public void fmVoices(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    fmv.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => fmv.freq;
                    1 => fmv.noteOn;
                    fmv.noteOn;
                    (tempo/div) => now;
                    fmv.noteOff;
                }
            }          
        }
    }
    public void hevyMetl(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    HM.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => HM.freq;
                    1 => HM.noteOn;
                    HM.noteOn;
                    (tempo/div) => now;
                    HM.noteOff;
                }
            }          
        }
    }
    public void percFlut(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    PF.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => PF.freq;
                    1 => PF.noteOn;
                    PF.noteOn;
                    (tempo/div) => now;
                    PF.noteOff;
                }
            }          
        }
    }
    public void rhodey(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    rhod.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => rhod.freq;
                    1 => rhod.noteOn;
                    rhod.noteOn;
                    (tempo/div) => now;
                    rhod.noteOff;
                }
            }          
        }
    }
    public void tubeBell(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    TB.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => TB.freq;
                    1 => TB.noteOn;
                    TB.noteOn;
                    (tempo/div) => now;
                    TB.noteOff;
                }
            }          
        }
    }
    public void wurley(dur beat,float div,int notes[])
    {
        (beat * 4) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    W.noteOff;
                    (tempo/div) => now;
                }
                else
                {
                    Std.mtof(notes[i]) => W.freq;
                    1 => W.noteOn;
                    W.noteOn;
                    (tempo/div)=> now;
                    W.noteOff;
                }
            }          
        }
    }
}
