public class Melody
{   
    public void sinOsc(float beat,float div,int notes[])
    {
        SinOsc sin => ADSR e => Bus.channel[14];
        e.set(10::ms, 8::ms, .5, 5::ms);
        240.0/beat => float tempo;

        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    e.keyOff();
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sin.freq;
                    e.keyOn();
                    (tempo/div)::second => now;
                    e.keyOff();
                }
            }          
        }
    }
    public void triOsc(float beat,float div,int notes[])
    {
        TriOsc tri => ADSR e => Bus.channel[14];
        e.set(10::ms, 8::ms, .5, 5::ms);
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    e.keyOff();
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => tri.freq;
                    e.keyOn();
                    (tempo/div)::second => now;
                    e.keyOff();
                }
            }          
        }
    }
    public void sqrOsc(float beat,float div,int notes[])
    {
        SqrOsc sqr => ADSR e => Bus.channel[14];
        e.set(10::ms, 8::ms, .5, 5::ms);
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    e.keyOff();
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sqr.freq;
                    e.keyOn();
                    (tempo/div)::second => now;
                    e.keyOff();
                }
            }          
        }
    }
    public void pulseOsc(float beat,float div,int notes[])
    {
        PulseOsc pulse => ADSR e => Bus.channel[14];
        e.set(10::ms, 8::ms, .5, 5::ms);
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    e.keyOff();
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => pulse.freq;
                    e.keyOn();
                    (tempo/div)::second => now;
                    e.keyOff();
                }
            }          
        }
    }
    public void sawOsc(float beat,float div,int notes[])
    {
        SawOsc saw => ADSR e => Bus.channel[14];
        e.set(10::ms, 8::ms, .5, 5::ms);
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    e.keyOff();
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => saw.freq;
                    e.keyOn();
                    (tempo/div)::second => now;
                    e.keyOff();
                }
            }          
        }
    }
    public void bandedWG(float beat,float div,int notes[])
    {
        BandedWG BWG => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BWG.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BWG.freq;
                    1 => BWG.noteOn;
                    BWG.noteOn;
                    (tempo/div)::second => now;
                    BWG.noteOff;
                }
            }          
        }
    }
    public void blowBotl(float beat,float div,int notes[])
    {
        BlowBotl BB => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BB.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BB.freq;
                    1 => BB.noteOn;
                    BB.noteOn;
                    (tempo/div)::second => now;
                    BB.noteOff;
                }
            }          
        }
    }
    public void blowHole(float beat,float div,int notes[])
    {
        BlowHole BH => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BH.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BH.freq;
                    1 => BH.noteOn;
                    BH.noteOn;
                    (tempo/div)::second => now;
                    BH.noteOff;
                }
            }          
        }
    }
    public void blowHole(float beat,float div,int notes[])
    {
        BlowHole BH => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BH.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BH.freq;
                    1 => BH.noteOn;
                    BH.noteOn;
                    (tempo/div)::second => now;
                    BH.noteOff;
                }
            }          
        }
    }
    public void bowed(float beat,float div,int notes[])
    {
        Bowed bowed => Bus.channel[14];
        240.0/beat => float tempo;
                
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    bowed.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => bowed.freq;
                    1 => bowed.noteOn;
                    bowed.noteOn;
                    (tempo/div)::second => now;
                    bowed.noteOff;
                }
            }          
        }
    }
    public void flute(float beat,float div,int notes[])
    {
        Flute flute => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    flute.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => flute.freq;
                    1 => flute.noteOn;
                    flute.noteOn;
                    (tempo/div)::second => now;
                    flute.noteOff;
                }
            }          
        }
    }
    public void mandolin(float beat,float div,int notes[])
    {
        Mandolin mandolin => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    mandolin.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => mandolin.freq;
                    1 => mandolin.noteOn;
                    mandolin.noteOn;
                    (tempo/div)::second => now;
                    mandolin.noteOff;
                }
            }          
        }
    }
    public void modalBar(float beat,float div,int notes[])
    {
        ModalBar MB => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    MB.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => MB.freq;
                    1 => MB.noteOn;
                    MB.noteOn;
                    (tempo/div)::second => now;
                    MB.noteOff;
                }
            }          
        }
    }
    public void moog(float beat,float div,int notes[])
    {
        Moog moog => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    moog.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => moog.freq;
                    1 => moog.noteOn;
                    moog.noteOn;
                    (tempo/div)::second => now;
                    moog.noteOff;
                }
            }          
        }
    }
    public void saxofony(float beat,float div,int notes[])
    {
        Saxofony sax => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    sax.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sax.freq;
                    1 => sax.noteOn;
                    sax.noteOn;
                    (tempo/div)::second => now;
                    sax.noteOff;
                }
            }          
        }
    }
    public void sitar(float beat,float div,int notes[])
    {
        Sitar sitar => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    sitar.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => sitar.freq;
                    1 => sitar.noteOn;
                    sitar.noteOn;
                    (tempo/div)::second => now;
                    sitar.noteOff;
                }
            }          
        }
    }
    public void stifKarp(float beat,float div,int notes[])
    {
        StifKarp SK => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    SK.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => SK.freq;
                    1 => SK.noteOn;
                    SK.noteOn;
                    (tempo/div)::second => now;
                    SK.noteOff;
                }
            }          
        }
    }
    public void voicForm(float beat,float div,int notes[])
    {
        VoicForm VF => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    VF.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => VF.freq;
                    1 => VF.noteOn;
                    VF.noteOn;
                    (tempo/div)::second => now;
                    VF.noteOff;
                }
            }          
        }
    }
    public void beeThree(float beat,float div,int notes[])
    {
        BeeThree BT => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BT.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BT.freq;
                    1 => BT.noteOn;
                    BT.noteOn;
                    (tempo/div)::second => now;
                    BT.noteOff;
                }
            }          
        }
    }
    public void fmVoices(float beat,float div,int notes[])
    {
        FMVoices fmv => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    fmv.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => fmv.freq;
                    1 => fmv.noteOn;
                    fmv.noteOn;
                    (tempo/div)::second => now;
                    fmv.noteOff;
                }
            }          
        }
    }
    public void hevyMetl(float beat,float div,int notes[])
    {
        HevyMetl HM => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    HM.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => HM.freq;
                    1 => HM.noteOn;
                    HM.noteOn;
                    (tempo/div)::second => now;
                    HM.noteOff;
                }
            }          
        }
    }
    public void percFlut(float beat,float div,int notes[])
    {
        PercFlut PF => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    PF.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => PF.freq;
                    1 => PF.noteOn;
                    PF.noteOn;
                    (tempo/div)::second => now;
                    PF.noteOff;
                }
            }          
        }
    }
    public void rhodey(float beat,float div,int notes[])
    {
        Rhodey rhodey => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    rhodey.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => rhodey.freq;
                    1 => rhodey.noteOn;
                    rhodey.noteOn;
                    (tempo/div)::second => now;
                    rhodey.noteOff;
                }
            }          
        }
    }
    public void tubeBell(float beat,float div,int notes[])
    {
        TubeBell TB => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    TB.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => TB.freq;
                    1 => TB.noteOn;
                    TB.noteOn;
                    (tempo/div)::second => now;
                    TB.noteOff;
                }
            }          
        }
    }
    public void wurley(float beat,float div,int notes[])
    {
        Wurley BH => Bus.channel[14];
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < notes.cap(); i++)
            {
                if(notes[i] == 0)
                {
                    BH.noteOff;
                    (tempo/div)::second => now;
                }
                else
                {
                    Std.mtof(notes[i]) => BH.freq;
                    1 => BH.noteOn;
                    BH.noteOn;
                    (tempo/div)::second => now;
                    BH.noteOff;
                }
            }          
        }
    }
}
